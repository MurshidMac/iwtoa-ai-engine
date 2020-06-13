import axios from 'axios';

export default function ProcessApi() {
  const baseUrl = "/process-api";

  function getAllProcessDefinitions() {
    return axios.get(baseUrl + '/repository/process-definitions?latest=true');
  }

  function startProcess(processInstanceId, data) {
    return axios.post(baseUrl + '/runtime/process-instances', {
      processDefinitionId: processInstanceId,
      returnVariables: true,
      variables: data
    });
  }

  function getActivityHistoryPost(token, taskRequestParameters) {
    let url = baseUrl + "/repository/process-definitions";

    return fetch('/process-api/query/historic-activity-instances', {
      method: "POST",
      body: JSON.stringify(taskRequestParameters),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer " + token
      }
    }
    ).then(response => {
      if (!response.ok) {
        throw new Error(`status ${response.status}`);
      }
      return response.json();
    }).then(json => {
      return json;
    }).catch(e => {
      console.log('API call failed:', e);
    })

  }

  function getActivityHistoryProcessInstance(token, instanceRequestParameters) {
    let url = baseUrl + "/query/historic-process-instances";

    return fetch(url, {
      method: 'POST',
      body: JSON.stringify(instanceRequestParameters),
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer " + token
      }
    }
    ).then(response => {
      if (!response.ok) {
        throw new Error(`status ${response.status}`);
      }
      return response.json();
    }).then(json => {
      return json;
    }).catch(e => {
      console.log('API call failed:', e);
    })

  }

  function getAllUserTasks(token, email) {
    let instanceRequestParameters = {
      "includeProcessVariables": true,
      variables: [{
        name: "emailAddress",
        value: email,
        operation: "equalsIgnoreCase",
        type: "string"
      }],
      size: 10000
    };

    let taskRequestParameters = {
      variables: [{
        name: "emailAddress",
        value: email,
        operation: "equalsIgnoreCase",
        type: "string"
      }],
      size: 10000
    };

    return axios.all([getActivityHistoryPost(token, taskRequestParameters),
    getActivityHistoryProcessInstance(token, instanceRequestParameters)]);
  }

  return Object.freeze({
    getAllProcessDefinitions,
    startProcess,
    getAllUserTasks
  });

}
