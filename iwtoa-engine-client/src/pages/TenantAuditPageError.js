import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';

class TenantAuditPageError extends Component {
    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <div className="govuk-width-container">
                    <main className="govuk-main-wrapper govuk-main-wrapper--l" id="main-content" role="main">
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-two-thirds">
                                <h1 className="govuk-heading-xl">Sorry, there was an error when retrieving the audit trail</h1>
                                <p className="govuk-body">
                                    We were not able to retrieve the audit trail of action related to the defects raised by you
                                </p>
                                <p className="govuk-body">
                                    Please try again later
                                </p>
                                <p className="govuk-body">
                                   if the problem persists, please contact New Tenancy <a href="#" className="govuk-link"> email@email.com</a> for assitances.
                                </p>
                            </div>
                        </div>
                    </main>
                </div>
                <Footer />
            </div>
        );
    }
}

export default TenantAuditPageError;