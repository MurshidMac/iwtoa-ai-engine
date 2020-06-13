import React, { Component } from "react";
import HeaderWithService from "../custom-components/HeaderWithService";
import Footer from "../components/Footer";
import { initAll } from "govuk-frontend";

class HandOverPage extends Component {
  
  state = {
    emailaddress: ''
  }

  constructor(props) {
    super(props);

    if (this.props.location.state == undefined) {
      this.props.history.push({
        pathname: '/'
      });
    }else{
      this.state = {
        emailaddress: this.props.location.state.email
      };
    }
  
  }

  componentDidMount() {
    initAll();
  }

  render() {
    return (
      <div>
        <HeaderWithService serviceTitle="New Tenancy" />
        <div className="govuk-width-container ">
          <main className="govuk-main-wrapper">
            <div className="govuk-panel govuk-panel--confirmation">
              <h1 className="govuk-panel__title">Handover Report complete</h1>
              <div className="govuk-panel__body govuk-!-font-size-16">
                Confirmation and any follow-ups will be sent to
                <br />
                <strong className="govuk-!-font-size-16">{this.state.emailaddress}</strong>
              </div>
            </div>
          </main>
        </div>
        <Footer />
      </div>
    );
  }
}

export default HandOverPage;
