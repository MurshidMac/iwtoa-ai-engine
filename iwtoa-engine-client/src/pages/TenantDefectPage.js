import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';
import CounterText from '../components/CounterText';
import { initAll } from 'govuk-frontend';
import ProcessApi from "../functions/process-api";

class TenantDefectPage extends Component {
    
    
    state = {
        fullName: '',
        emailAddress: '',
        phoneNumber: '',
        contactMethod: '',
        postCode: '',
        selectedAddress: '',
        defectslist: '',
        textlength: 0
    }

    constructor(props) {
        super(props);
        this.state = {
            defectPage: false
        };

        if(this.props.location.state == undefined){
            this.props.history.push({
                pathname: '/'
            });
        }else {
            this.state = {
                fullName: this.props.location.state.fullName,
                emailAddress: this.props.location.state.emailAddress,
                phoneNumber: this.props.location.state.phoneNumber,
                contactMethod: this.props.location.state.contactMethod,
                postCode: this.props.location.state.searchTerm,
                selectedAddress: this.props.location.state.selectedaddress
            }
            console.log(this.props.location.state.fullName);
            console.log(this.props.location.state.emailAddress);
            console.log(this.props.location.state.phoneNumber);
            console.log(this.props.location.state.contactMethod);
            console.log(this.props.location.state.selectedaddress);
            console.log(this.props.location.state.searchTerm);
        }

        this.handleChange = this.handleChange.bind(this);
    }

    componentDidMount() {
      initAll();
    }

    handleChange(event) {
      this.setState({
          defectslist: event.target.value,
          textlength: event.target.value.length
       });
      console.log(this.state.defectslist);
    }

    handleSubmit(event) {
      event.preventDefault();
      let defects = "";
      if (this.state.defectslist != null) {
          defects = this.state.defectslist;
      }
      let formKey = "MoveTenantInProcess";
      let processData = [
          {
              "name": "fullName",
              "value": this.state.fullName
          },
          {
              "name": "emailAddress",
              "value": this.state.emailAddress
          },
          {
              "name": "phoneNumber",
              "value": this.state.phoneNumber
          },
          {
              "name": "contactMethod",
              "value": this.state.contactMethod
          },
          {
              "name": "postCode",
              "value": this.state.postCode
          },
          {
              "name": "address",
              "value": this.state.selectedAddress
          },
          {
              "name": "defectdetail",
              "value": defects
          },
          {
            "name": "isNewUser",
            "value": false
          }
      ];
    const processApi = ProcessApi();
    processApi.getAllProcessDefinitions()
    .then(response => {
      console.log('getAllProcessDefinitions success..');
      let processesDefinitions = response.data.data;
      let filter = processesDefinitions.filter(function(elem) {
        return formKey == elem.key;
      });
      if(filter.length > 0){
        let processId = filter[0].id;
        console.log('processId : ' , processId);
        console.log('processData : ' , processData);
        processApi.startProcess(processId, processData)
        .then(startResponse => {
          console.log('process started : ' );
          this.props.history.push({
            pathname: "/handover",
            state: {
              email: this.state.emailAddress
            }
          });
        })
        .catch(postError => {
          console.log('process not started : ' );
          console.log(postError);
          this.props.history.push({
            pathname: "/errorhandover"
          });
        });
      }
    })
    .catch(error => {
      console.log('process not retreived : ' );
      console.log(error);
      this.props.history.push({
        pathname: "/errorhandover"
      });
    });
  }

    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <form onSubmit={this.handleSubmit.bind(this)}>
                    <div className="govuk-width-container ">
                        <main className="govuk-main-wrapper">
                            <div className="govuk-grid-row">
                                <div className="govuk-grid-column-two-thirds">
                                    <h1 className="govuk-heading-l">Please provide your defect details</h1>
                                </div>
                            </div>
                            <div className="govuk-form-group">
                                <span id="more-detail-hint" className="govuk-hint">
                                    You can provide multiple defects and seperate them with <i>new_line</i>
                                </span>
                                <textarea className="govuk-textarea" id="more-detail" name="more-detail" rows="5" aria-describedby="more-detail-hint" value={this.state.defectslist} onChange={this.handleChange} ></textarea>
                            </div>
                            <div className="govuk-grid-row">
                                <div className="govuk-grid-column-two-thirds">
                                <CounterText lengthof={ this.state.textlength }/>
                                </div>
                            </div>
                            <input type="submit" className="govuk-button" value="Submit defect" />
                        </main>
                    </div>
                </form>
                <Footer />
            </div>
        );
    }
}

export default TenantDefectPage;
