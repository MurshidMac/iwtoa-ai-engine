import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';

class HandOverPageError extends Component {
    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <div className="govuk-width-container">
                    <main className="govuk-main-wrapper govuk-main-wrapper--l" id="main-content" role="main">
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-two-thirds">
                                <h1 className="govuk-heading-xl">Sorry, there was an error when submitting the defects</h1>
                                <p className="govuk-body">
                                    We were not able to submit the defects to the relevant authorities. 
                                </p>
                                <p className="govuk-body">
                                   Please try again later.
                                </p>
                                <p className="govuk-body">
                                    If the problem persists, please contact New Tenancy <a href="#" className="govuk-link"> email@email.com</a> for assitances.
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

export default HandOverPageError;