import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';
import Keycloak from 'keycloak-js';
import fetchIntercept from 'fetch-intercept';
import axios from 'axios';
import AuditDetails from '../custom-components/AuditDetails';
import ProcessApi from "../functions/process-api";

class TenantAuditPage extends Component {
    state = {
        defectsList: '',
        keycloak: null,
        authenticated: false,
        audits: [],
        email: ""
    }

    constructor(props) {
        super(props);
        this.state = { keycloak: this.props.keycloak, authenticated: false };
    }

    componentDidMount() {
        if (this.props.keycloak == null) {
            keycloak.init({ onLoad: 'login-required' }).then(authenticated => {
                if (authenticated) {
                    this.setState({
                        keycloak: keycloak,
                        authenticated: authenticated
                    });

                    updateLocalStorage();
                    let useremail;
                    keycloak.loadUserInfo().then(userInfo => {
                        this.setState({ email: userInfo.email })
                        return useremail = userInfo.email;
                    }).then(useremail => {
                        const token = localStorage.getItem('kc_token');
                        let taskResponse = "";
                        let taskCount = "";
                        let processId = [];
                        let linkedProcessInstances = [];
                        let startInstanceName = "MoveTenantInProcess";
                        let audits = this.getAuditFromAPI(token, useremail)
                            .then(axios.spread((response, appleRes) => {

                                let startInstanceIDs = [];
                                let instanceDetails = "";
                                instanceDetails = appleRes.data;
                                taskResponse = response.data;
                                taskCount = response.size;

                                //new solution
                                for (var i = 0; i < instanceDetails.length; i++) {
                                    console.log("check len " + instanceDetails[i].id);
                                    var processDefName = instanceDetails[i].processDefinitionId;
                                    console.log('processDefName is ', processDefName);
                                    // var activityType = taskResponse[i].activityType;
                                    if (processDefName.split(":")[0] == startInstanceName) {
                                        startInstanceIDs.push(instanceDetails[i].id);
                                    }
                                }

                                for (var b in startInstanceIDs) {
                                    console.log("Found instance : " + startInstanceIDs[b]);
                                }

                                var instancesids = [
                                    [0, 0]
                                ];
                                var tasksids = [
                                    [0, 0]
                                ];

                                var dataArray = [];
                                console.log('startInstanceIDs.length ', startInstanceIDs.length);
                                for (var i = 0; i < startInstanceIDs.length; i++) {

                                    var mainj = 0;
                                    var taskscount = 0;
                                    let foundBool = false;
                                    if (i > 0) {
                                        instancesids.push([0, 0]);
                                        tasksids.push([0, 0]);
                                    }
                                    for (var j = 0; j < taskCount; j++) {
                                        if (taskResponse[j].processInstanceId == startInstanceIDs[i] && taskResponse[j].calledProcessInstanceId != null) {
                                            foundBool = true;
                                            if (mainj == 0) {
                                                instancesids[i][mainj] = startInstanceIDs[i];
                                                tasksids[i][taskscount] = startInstanceIDs[i];
                                                for (var tk = 0; tk < taskCount; tk++) {
                                                    if (taskResponse[tk].processInstanceId == startInstanceIDs[i] && (taskResponse[tk].activityType == "userTask" || taskResponse[tk].activityType == "serviceTask")) {
                                                        taskscount++;
                                                        tasksids[i][taskscount] = taskResponse[tk].id;
                                                    }
                                                }
                                            }
                                            mainj++;
                                            instancesids[i][mainj] = taskResponse[j].calledProcessInstanceId;
                                            for (var tk = 0; tk < taskCount; tk++) {
                                                if (taskResponse[tk].processInstanceId == instancesids[i][mainj] && (taskResponse[tk].activityType == "userTask" || taskResponse[tk].activityType == "serviceTask")) {
                                                    taskscount++;
                                                    tasksids[i][taskscount] = taskResponse[tk].id;
                                                }
                                            }

                                            for (var z = 0; z < taskCount; z++) {
                                                if (taskResponse[z].processInstanceId == instancesids[i][mainj] && taskResponse[z].calledProcessInstanceId != null) {
                                                    mainj++;
                                                    instancesids[i][mainj] = taskResponse[z].calledProcessInstanceId;
                                                    for (var tk = 0; tk < taskCount; tk++) {
                                                        if (taskResponse[tk].processInstanceId == instancesids[i][mainj] && (taskResponse[tk].activityType == "userTask" || taskResponse[tk].activityType == "serviceTask")) {
                                                            taskscount++;
                                                            tasksids[i][taskscount] = taskResponse[tk].id;
                                                        }
                                                    }

                                                }
                                            }

                                        }
                                    }
                                    if (foundBool == false) {
                                        instancesids[i][mainj] = startInstanceIDs[i];
                                    }

                                    var propertyCollection = {};
                                    var openTasksArray = [];
                                    var completedTaskArray = [];
                                    var completedCount = 0;
                                    var openCount = 0;

                                    for (var d = 1; d < tasksids[i].length; d++) {
                                        console.log('tasksids is ', tasksids[i]);
                                        for (var e = 0; e < taskCount; e++) {
                                            if (taskResponse[e].id == tasksids[i][d]) {
                                                var taskObj = {};
                                                var eventDate;
                                                if (taskResponse[e].endTime == null || taskResponse[e].endTime == "null") {
                                                    eventDate = new Date(taskResponse[e].startTime);
                                                    taskObj.dateandtime = eventDate.toLocaleDateString("en-GB") + ' ' + eventDate.toLocaleTimeString();
                                                    taskObj.tasknote = taskResponse[e].activityName;
                                                    openTasksArray[openCount] = taskObj;
                                                    openCount++;
                                                } else {
                                                    eventDate = new Date(taskResponse[e].endTime);
                                                    taskObj.dateandtime = eventDate.toLocaleDateString("en-GB") + ' ' + eventDate.toLocaleTimeString();
                                                    taskObj.tasknote = taskResponse[e].activityName;
                                                    completedTaskArray[completedCount] = taskObj;
                                                    completedCount++;
                                                }
                                            }
                                        }
                                    }

                                    console.log("tasks id : " + tasksids[i][0]);
                                    var address = "";
                                    outerloop:
                                    for (var k = 0; k < startInstanceIDs.length; k++) {
                                        console.log("instace id : " + startInstanceIDs[k]);
                                        if (startInstanceIDs[k] == tasksids[i][0]) {
                                            console.log("dound a match");
                                            for (var n = 0; n < instanceDetails.length; n++) {
                                                console.log("instance readering " + instanceDetails[n].id);
                                                if (instanceDetails[n].id == startInstanceIDs[k]) {
                                                    var allVariables = instanceDetails[n].variables;
                                                    console.log("looking var ");
                                                    for (var n in allVariables) {
                                                        console.log("address found");
                                                        if (allVariables[n].name == "address") {
                                                            address = allVariables[n].value;
                                                            console.log("address in");
                                                            break outerloop;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }

                                    propertyCollection.address = address;
                                    propertyCollection.completed = completedTaskArray;
                                    propertyCollection.open = openTasksArray;
                                    dataArray.push(propertyCollection);
                                }

                                var finalObject = {
                                    "data": dataArray
                                };
                                this.setState({ audits: dataArray });

                            }))
                            .catch(error => {
                                console.log("Error came " + error);
                                this.props.history.push({
                                    pathname: '/erroraudits'
                                });
                            });
                        // console.log('audit details ', audits);
                        //return audits.    
                    });
                }
            });
        }
    }

    setAudits() {
        console.log('setaudits', this.state.audits);
        return (
            <div className="govuk-accordion" data-module="accordion" id="accordion-default">
                {this.state.audits.map((data, index) => <AuditDetails key={index} address={data.address} defectCompleted={data.completed} defectPending={data.open} />)}
            </div>
        );
    }

    // returns a json | or a promise
    getAuditFromAPI(token, email) {
        const processApi = ProcessApi();
        return processApi.getAllUserTasks(token, email);
    }


    checkKeycloakState() {
        if (this.state.keycloak) {
            if (this.state.authenticated) {
                return (
                    <div>
                        <HeaderWithService serviceTitle="Audit Trail" />
                        <form>
                            <div className="govuk-width-container ">
                                <main className="govuk-main-wrapper">
                                    <div className="govuk-grid-row">
                                        <div className="govuk-grid-column-two-thirds">
                                            <h1 className="govuk-heading-l">Audit Trails</h1>
                                        </div>
                                    </div>
                                    <div>
                                        {this.setAudits()}
                                    </div>
                                </main>
                            </div>
                        </form>
                        <Footer />
                    </div>
                );
            } else return (<div>Re-enter credentials</div>)
        } else {
            return (<div>needs authentication</div>)
        }
    }

    render() {
        if (this.state.audits) {
            if (this.state.audits.length > 0) {
                return (<div>{this.checkKeycloakState()}</div>)
            } else {
                return (
                    <div>
                        <HeaderWithService serviceTitle="Audit Trail" />
                        <form>
                            <div className="govuk-width-container ">
                                <main className="govuk-main-wrapper">
                                    <div className="govuk-grid-row">
                                        <div className="govuk-grid-column-two-thirds">
                                            <h1 className="govuk-heading-l">Audit Trails</h1>
                                        </div>
                                    </div>
                                </main>
                            </div>
                        </form>
                        <Footer />
                    </div>
                );
            }
        } else {
            return (
                <div>
                    <HeaderWithService serviceTitle="Audit Trail" />
                    <form>
                        <div className="govuk-width-container ">
                            <main className="govuk-main-wrapper">
                                <div className="govuk-grid-row">
                                    <div className="govuk-grid-column-two-thirds">
                                        <h1 className="govuk-heading-l">Audit Trails</h1>
                                    </div>
                                </div>
                            </main>
                        </div>
                    </form>
                    <Footer />
                </div>
            );
        }
    }
}

const unregister = fetchIntercept.register({
    request: function (url, config) {
        return new Promise(resolve => {
            keycloak.updateToken(5)
                .then(refreshed => {
                    if (refreshed) {
                        updateLocalStorage()
                    }
                    config.headers.Authorization = 'Bearer ' + keycloak.token;
                    resolve([url, config])
                })
                .catch(e => {
                    keycloak.login();
                })
        })
    },
    requestError: function (error) {
        return Promise.reject(error);
    },
    response: function (response) {
        return response;
    },
    responseError: function (error) {
        return Promise.reject(error);
    }
});

const keycloak = Keycloak('../keycloak.json');

const updateLocalStorage = () => {
    localStorage.setItem('kc_token', keycloak.token);
    localStorage.setItem('kc_refreshToken', keycloak.refreshToken);
};

//export default withRouter(TenantAuditPage);
export default TenantAuditPage;
