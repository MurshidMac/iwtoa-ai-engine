import React, { Component } from 'react';
import './App.scss';
// import { BrowserRouter, Route, Switch } from 'react-router-dom';
// import Processes from "./components/Processes";
// import About from "./components/About";
// import Contact from "./components/Contact";
import Error from "./components/Error"
import Keycloak from 'keycloak-js';
import fetchIntercept from 'fetch-intercept';
// import Header from './components/Header';
import Tenant from './pages/Tenant';
import TenantAddressPage from './pages/TenantAddressPage';
import TenantPostCodePage from './pages/TenantPostCodePage';
import TenantDefectPage from './pages/TenantDefectPage';
import TenantAuditPage from './pages/TenantAuditPage';
import Autocompletetest from './pages/Autocompletetest';
import { initAll } from 'govuk-frontend';
import { Route, Switch } from 'react-router-dom';
import HandOverPage from "./pages/HandOverPage";
import HandOverPageError from './pages/HandOverPageError';
import TenantAuditPageError from './pages/TenantAuditPageError';
import SolutionPage from './pages/SolutionPage';
import SolutionVerticalPage from './pages/SolutionVerticalPage';
import SolutionFinalPage from './pages/SolutionFinalPage';
import TaskAssignment from './pages/TaskAssignment';

class App extends Component {

  constructor(props) {
    super(props);
    this.state = { keycloak: null, authenticated: false };
  }

  componentDidMount() {
    initAll();
  }

  render() {
   return (
        <div className="govuk-template__body app-body-className">
            <Switch>
              <Route path="/" exact component={Tenant} />
              <Route path="/postcode" exact component={TenantPostCodePage} />
              <Route path="/address" exact component={TenantAddressPage} />
              <Route path="/defect" exact component={TenantDefectPage} />
              <Route path="/audittrail" keycloak={this.state.keycloak} exact component={TenantAuditPage} />
              <Route path="/autocomplete" exact component={Autocompletetest}/>
              <Route path="/handover" exact component={HandOverPage} />
              <Route path="/solution" exact component={SolutionPage} />
              <Route path="/solutionverticalpage" exact component={SolutionVerticalPage} />
              <Route path="/solutionfinal" exact component={SolutionFinalPage} />
              <Route path="/taskassignment" exact component={TaskAssignment} />
              <Route path="/errorhandover" exact component={HandOverPageError}/>
              <Route path="/erroraudits" exact component={TenantAuditPageError}/>
              <Route component={Error} />
            </Switch>
          </div>
      )
  }
}



export default App;
