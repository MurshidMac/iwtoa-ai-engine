import React, { Component } from 'react'

export default class ErrorSummary extends Component {

    state = {
        errorSummary: false,
        errorSummaryDetails: '',
        errorName: false,
        errorEmail: false,
        errorPhoneNumber: false,
        errorContactMethod: false
    }

    constructor(props) {
        super(props);
        console.log('Prop of summary ', this.props.errorSummary)
        this.state.errorSummary = this.props.errorSummary;
        console.log('Prop of summary ', this.props.errorName)
        this.state.errorName = this.props.errorName;
        console.log('Prop of summary ', this.props.errorEmail)
        this.state.errorEmail = this.props.errorEmail;
        console.log('Prop of summary ', this.props.errorPhoneNumber)
        this.state.errorPhoneNumber = this.props.errorPhoneNumber;
        console.log('Error contact method' < this.props.errorContactMethod);
        this.state.errorContactMethod = this.props.errorContactMethod;
    }

    render() {
        console.log('Error summary for the condition ', this.state.errorSummary)
        if (this.state.errorSummary == true) {
            console.log('State of the Error Name', this.state.errorName);
            console.log('State of the Error email', this.state.errorEmail);
            console.log('State of the Error Phone Number', this.state.errorPhoneNumber);
            console.log('State of the Error Phone Number', this.state.errorContactMethod);

            // ALL Are Empty
            if (this.state.errorName == true && this.state.errorEmail == true && this.state.errorPhoneNumber == true && this.state.errorContactMethod == true) {
                return (<div>
                    <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                        <h2 className="govuk-error-summary__title" id="error-summary-title">
                            There is a problem
                    </h2>
                        <div className="govuk-error-summary__body">
                            <ul className="govuk-list govuk-error-summary__list">
                                <li>
                                    <a href="#name">Enter your full name</a>
                                </li>
                                <li>
                                    <a href="#email">Enter the email address in the correct form</a>
                                </li>
                                <li>
                                    <a href="#phonenumber">Enter a UK telephone number</a>
                                </li>
                                <li>
                                    <a href="#changed-name-1"> Select a method to be contacted </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>)
                // One of them
            
            } else if (this.state.errorName == true || this.state.errorEmail == true || this.state.errorPhoneNumber == true || this.state.errorContactMethod == true) {

                // if all of these three are valude
                if (this.state.errorName == true && this.state.errorEmail == true && this.state.errorPhoneNumber == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorEmail == true && this.state.errorPhoneNumber == true && this.state.errorContactMethod == true) {
                    console.log('The errorSummary is with email phone and contact method');
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorName == true && this.state.errorPhoneNumber == true && this.state.errorContactMethod == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)

                    // Name and Email Error
                } else if (this.state.errorName == true && this.state.errorEmail == true && this.state.errorContactMethod == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorName == true && this.state.errorEmail == true) {

                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                    // PhoneNumber and Contact Error
                } else if (this.state.errorName == true && this.state.errorPhoneNumber == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorName == true && this.state.errorContactMethod == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorPhoneNumber == true && this.state.errorContactMethod == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorEmail == true && this.state.errorPhoneNumber == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                    <li>
                                        <a href="#phonenumber">Enter a UK telephone number</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorEmail == true && this.state.errorContactMethod == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                        </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                    <li>
                                        <a href="#changed-name-1"> Select a method to be contacted </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorName == true) {
                    return (<div>
                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                                </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#name">Enter your full name</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>)
                } else if (this.state.errorEmail == true) {
                    return (<div>

                        <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                            <h2 className="govuk-error-summary__title" id="error-summary-title">
                                There is a problem
                                </h2>
                            <div className="govuk-error-summary__body">
                                <ul className="govuk-list govuk-error-summary__list">
                                    <li>
                                        <a href="#email">Enter the email address in the correct form</a>
                                    </li>
                                </ul>
                            </div>
                        </div>

                        {/* <div className="govuk-form-group govuk-form-group--error">
                                <label className="govuk-label" htmlFor="email">
                                    Email address
                                </label>
                                <span id="email-hint" className="govuk-hint">
                                    We’ll only use this to send you a receipt
                                </span>
                                <span id="email-error" className="govuk-error-message">
                                    <span className="govuk-visually-hidden">Error:</span> Enter an email address in the correct format, like name@example.com
                                </span> */}
                        {/* <input className="govuk-input govuk-input--error" id="email" name="email" type="email" value="Not an email address" aria-describedby="email-hint email-error" autoComplete="email" spellCheck="false" /> */}
                        {/* </div> */}
                    </div>)
                } else if (this.state.errorPhoneNumber == true) {
                    return (
                        <div>
                            <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                                <h2 className="govuk-error-summary__title" id="error-summary-title">
                                    There is a problem
                                </h2>
                                <div className="govuk-error-summary__body">
                                    <ul className="govuk-list govuk-error-summary__list">
                                        <li>
                                            <a href="#phonenumber">Enter a UK telephone number</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            {/* <div className="govuk-form-group govuk-form-group--error">
                                    <label className="govuk-label" htmlFor="telephone-number">
                                        UK telephone number
                                </label>
                                    <span id="telephone-number-error" className="govuk-error-message">
                                        <span className="govuk-visually-hidden">Error:</span> Enter a UK telephone number
                                </span> */}
                            {/* <input className="govuk-input govuk-input--width-20 govuk-input--error" id="telephone-number" name="telephone-number" type="tel" aria-describedby="telephone-number-error" autocomplete="tel" /> */}
                            {/* </div> */}
                        </div>
                    )
                } else if (this.state.errorContactMethod == true) {
                    return (
                        <div>
                            <div className="govuk-error-summary" aria-labelledby="error-summary-title" role="alert" tabIndex="-1" data-module="error-summary">
                                <h2 className="govuk-error-summary__title" id="error-summary-title">
                                    There is a problem
                                </h2>
                                <div className="govuk-error-summary__body">
                                    <ul className="govuk-list govuk-error-summary__list">
                                        <li>
                                            <a href="#changed-name-1"> Select a method to be contacted </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>

                            {/* <div className="govuk-form-group govuk-form-group--error">
                                    <label className="govuk-label" htmlFor="telephone-number">
                                        UK telephone number
                                </label>
                                    <span id="telephone-number-error" className="govuk-error-message">
                                        <span className="govuk-visually-hidden">Error:</span> Enter a UK telephone number
                                </span> */}
                            {/* <input className="govuk-input govuk-input--width-20 govuk-input--error" id="telephone-number" name="telephone-number" type="tel" aria-describedby="telephone-number-error" autocomplete="tel" /> */}
                            {/* </div> */}
                        </div>
                    )
                }
            }

        } else {
            // return nothing ig the 
            return (<div></div>)
        }
    }
}
