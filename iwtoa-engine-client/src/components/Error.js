import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from './Footer';

class Error extends Component {
    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <div className="govuk-width-container">
                    <main className="govuk-main-wrapper govuk-main-wrapper--l" id="main-content" role="main">
                        <div className="govuk-grid-row">
                            <div className="govuk-grid-column-two-thirds">
                                <h1 className="govuk-heading-xl">Page not found</h1>
                                <p className="govuk-body">
                                    If you typed the web address, check it is correct.
                                </p>
                                <p className="govuk-body">
                                    If you pasted the web address, check you copied the entire address.
                                </p>
                                <p className="govuk-body">
                                    If the web address is correct or you selected a link or button, <a href="#" className="govuk-link">contact New Tenancy</a> if you need to speak to someone about your requests.
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

export default Error;