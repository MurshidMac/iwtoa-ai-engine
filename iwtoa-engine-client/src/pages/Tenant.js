import React, { Component } from 'react';
import { Redirect } from 'react-router';
import Main from '../components/Main';
import Label from '../components/Label';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';
import ErrorSummary from '../custom-components/ErrorSummary';


class Tenant extends React.Component {

    state = {
        toTenantPostCode: false,
        fullName: '',
        emailAddress: '',
        phoneNumber: '',
        contactMethod: '',
        contactMethodSelection: false,
        validation: {
            name: 'govuk-input',
            emailAddress: 'govuk-input',
            phoneNumber: 'govuk-input',
            contactMethod: 'govuk-input'
        },
        errorSummary: false,
        errorName: false,
        errorEmail: false,
        errorPhoneNumber: false,
        errorContactMethod: false,
        classNameforName: '',
        classNameforEmail: '',
        classNameforPhoneNumber: '',
        classNameforContactMethod: '',
        nameLabel: false,
        emailLabel: false,
        phoneLabel: false,
        nameLabelText: '',
        errorTextName: '',
        errorTextEmail: '',
        errorTextPhoneNumber: '',
        errorTextContactMethod: ''
    }

    constructor(props) {
        super(props);
        this.handleNameChange = this.handleNameChange.bind(this);
        this.handleEmailChange = this.handleEmailChange.bind(this);
        this.handlePreferedNumberChange = this.handlePreferedNumberChange.bind(this);
        this.handleChange = this.handleChange.bind(this);
    }

    handleNameChange(event) {
        console.log(event.target.value)
        this.setState({
            fullName: event.target.value,
            initial: true
        });
    }

    handleEmailChange(event) {
        console.log(event.target.value)
        this.setState({ emailAddress: event.target.value });
    }

    handlePreferedNumberChange(event) {
        console.log(event.target.value)
        this.setState({ phoneNumber: event.target.value });
    }

    handleChange(event) {
        console.log(event.target.value)
        this.setState({
            contactMethod: event.target.value,
            contactMethodSelection: true
        });
    }

    handleSubmit(event) {
        event.preventDefault();
        this.setState({ toTenantPostCode: true });

        // when submitting get the state and update the necessary className for each component.
        let instanceval = this.checkState();

        if (instanceval) {
            this.props.history.push({
                pathname: '/postcode',
                state: {
                    fullName: this.state.fullName,
                    emailAddress: this.state.emailAddress,
                    phoneNumber: this.state.phoneNumber,
                    contactMethod: this.state.contactMethod
                }
            });
        }
    }

    checkState() {

        // if All 4 are empty
        if (this.state.phoneNumber == '' && this.state.emailAddress == '' && this.state.fullName == '' && this.state.contactMethod == '') {
            this.setState({
                validation: {
                    name: 'govuk-input govuk-input--error',
                    emailAddress: 'govuk-input govuk-input--error',
                    phoneNumber: 'govuk-input govuk-input--error',
                },
                classNameforName: 'govuk-form-group--error',
                classNameforEmail: 'govuk-form-group--error',
                classNameforPhoneNumber: 'govuk-form-group--error',
                classNameforContactMethod: 'govuk-form-group--error',
                errorSummary: true,
                errorName: true,
                errorEmail: true,
                errorPhoneNumber: true,
                errorContactMethod: true,
                errorTextName: 'Enter your full name',
                errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                errorTextPhoneNumber: 'Enter a UK telephone number',
                errorTextContactMethod: 'Select a method to be contacted'
            });
            this.errorInfo(this.state);
            return false;
            // either of them are empty don't know which one is
        } else if (this.state.fullName == '' || this.state.emailAddress == '' || this.state.phoneNumber == '' || this.state.contactMethod == '') {

            if (this.state.fullName == '' && this.state.emailAddress == '' && this.state.phoneNumber == '') {
                // Contact is Selected and Rest is empty 
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input govuk-input--error',
                        phoneNumber: 'govuk-input govuk-input--error',
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: true,
                    errorPhoneNumber: true,
                    errorContactMethod: false,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: ''
                });
                this.errorInfo();
                return false;

            } else if (this.state.emailAddress == '' && this.state.phoneNumber == '' && this.state.contactMethod == '') {

                this.setState({
                    validation: {
                        name: 'govuk-input',
                        emailAddress: 'govuk-input govuk-input--error',
                        phoneNumber: 'govuk-input govuk-input--error'
                    },
                    classNameforName: '',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: false,
                    errorEmail: true,
                    errorPhoneNumber: true,
                    errorContactMethod: true,
                    errorTextName: '',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;

            } else if (this.state.phoneNumber == '' && this.state.contactMethod == '' && this.state.fullName == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input',
                        phoneNumber: 'govuk-input govuk-input--error',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: '',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: false,
                    errorPhoneNumber: true,
                    errorContactMethod: true,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: '',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;



            } else if (this.state.fullName == '' && this.state.emailAddress == '' && this.state.contactMethod == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input govuk-input--error',
                        phoneNumber: 'govuk-input ',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: true,
                    errorPhoneNumber: false,
                    errorContactMethod: true,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;

            } else if (this.state.fullName == '' && this.state.emailAddress == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input  govuk-input--error',
                        phoneNumber: 'govuk-input',
                        contactMethod: 'govuk-input'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: true,
                    errorPhoneNumber: false,
                    errorContactMethod: false,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: ''
                });
                return false;
            } else if (this.state.fullName == '' && this.state.contactMethod == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input ',
                        phoneNumber: 'govuk-input ',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: '',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: false,
                    errorPhoneNumber: false,
                    errorContactMethod: true,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: '',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.fullName == '' && this.state.phoneNumber == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input ',
                        phoneNumber: 'govuk-input ',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: '',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: false,
                    errorPhoneNumber: true,
                    errorContactMethod: false,
                    errorTextName: 'Enter your full name',
                    errorTextEmail: '',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.emailAddress == '' && this.state.contactMethod == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input ',
                        emailAddress: 'govuk-input govuk-input--error',
                        phoneNumber: 'govuk-input ',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: '',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: false,
                    errorEmail: true,
                    errorPhoneNumber: false,
                    errorContactMethod: true,
                    errorTextName: '',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.emailAddress == '' && this.state.phoneNumber == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input',
                        phoneNumber: 'govuk-input govuk-input--error',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: '',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: false,
                    errorPhoneNumber: true,
                    errorContactMethod: false,
                    errorTextName: '',
                    errorTextEmail: 'Enter an email address in the correct format, like name@example.com',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: ''
                });
                this.errorInfo(this.state);
                return false;
                // condition is only name and email is filled
            } else if (this.state.phoneNumber == '' && this.state.contactMethod == '') {

                this.setState({
                    validation: {
                        name: 'govuk-input',
                        emailAddress: 'govuk-input ',
                        phoneNumber: 'govuk-input govuk-input--error',
                    },
                    classNameforName: '',
                    classNameforEmail: '',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: false,
                    errorEmail: false,
                    errorPhoneNumber: true,
                    errorContactMethod: true,
                    errorTextName: '',
                    errorTextEmail: '',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.fullName == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input govuk-input--error',
                        emailAddress: 'govuk-input',
                        phoneNumber: 'govuk-input',
                        contactMethod: 'govuk-input'
                    },
                    classNameforName: 'govuk-form-group--error',
                    classNameforEmail: '',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorName: true,
                    errorEmail: false,
                    errorPhoneNumber: false,
                    nameLabel: '',
                    nameLabelText: '',
                    errorTextName: 'Enter your full name',
                    errorTextEmail: '',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: ''
                });
                this.errorInfo(this.state);
                console.log('I am returninig form here', this.state.errorSummary)
                return false;
            } else if (this.state.emailAddress == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input',
                        emailAddress: 'govuk-input govuk-input--error',
                        phoneNumber: 'govuk-input',
                        contactMethod: 'govuk-input'
                    },
                    classNameforName: '',
                    classNameforEmail: 'govuk-form-group--error',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorEmail: true,
                    errorName: false,
                    errorPhoneNumber: false
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.phoneNumber == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input',
                        emailAddress: 'govuk-input',
                        phoneNumber: 'govuk-input govuk-input--error',
                        contactMethod: 'govuk-input'
                    },
                    classNameforName: '',
                    classNameforEmail: '',
                    classNameforPhoneNumber: 'govuk-form-group--error',
                    classNameforContactMethod: '',
                    errorSummary: true,
                    errorName: false,
                    errorEmail: false,
                    errorPhoneNumber: true,
                    errorContactMethod: false,
                    errorTextName: '',
                    errorTextEmail: '',
                    errorTextPhoneNumber: 'Enter a UK telephone number',
                    errorTextContactMethod: ''
                });
                this.errorInfo(this.state);
                return false;
            } else if (this.state.contactMethod == '') {
                this.setState({
                    validation: {
                        name: 'govuk-input',
                        emailAddress: 'govuk-input',
                        phoneNumber: 'govuk-input ',
                        contactMethod: 'govuk-input govuk-input--error'
                    },
                    classNameforName: '',
                    classNameforEmail: '',
                    classNameforPhoneNumber: '',
                    classNameforContactMethod: 'govuk-form-group--error',
                    errorSummary: true,
                    errorName: false,
                    errorEmail: false,
                    errorPhoneNumber: false,
                    errorContactMethod: true,
                    errorTextName: '',
                    errorTextEmail: '',
                    errorTextPhoneNumber: '',
                    errorTextContactMethod: 'Select a method to be contacted'
                });
                this.errorInfo(this.state);
                return false;
            }

        } else {
            return true;
        }
    }

    // Error Information to be shown
    errorInfo(state) {
        console.log('Error summary of the details ', state.errorSummary);
        if (state.errorSummary == true) {
            if (state.errorName == true && state.errorEmail == true && state.errorPhoneNumber == true && state.errorContactMethod == true) {
                return (<div>
                    <ErrorSummary errorSummary={state.errorSummary} errorName={state.errorName} errorEmail={state.errorEmail}
                        errorPhoneNumber={state.errorPhoneNumber} errorContactMethod={state.errorContactMethod}
                    />
                </div>)

            } else {
                return (<div>
                    <ErrorSummary errorSummary={state.errorSummary} errorName={state.errorName} errorEmail={state.errorEmail}
                        errorPhoneNumber={state.errorPhoneNumber} errorContactMethod={state.errorContactMethod}
                    />
                </div>);
            }
        } else {
            return (
                <div></div>
            )
        }
    }


    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="IWTOA Ai Engine" />
                <form onSubmit={this.handleSubmit.bind(this)}>
                    <div className="govuk-width-container ">
                        <Main title="Loan Application" />
                        {this.errorInfo(this.state)}
                        <div className="govuk-form-group ">
                            <div className={this.state.classNameforName}>
                                <Label nameofform="namedetails" texttitle="Full name" texthint="As shown in your birth certificate or passport" errorLabel={this.state.errorSummary} nameLabel={this.state.nameLabel} />
                                <label className="govuk-error-message">
                                    {this.state.errorTextName}
                                </label>
                                <input className={`${this.state.validation.name}`} id="name" name="name" type="text" value={this.state.fullName} onChange={this.handleNameChange} aria-describedby="name-error" />
                            </div>
                            <div className="govuk-!-padding-bottom-5"></div>
                            <div className={this.state.classNameforEmail}>
                                <Label nameofform="namedetails" texttitle="Email address" texthint="We’ll only use this to send you a receipt" errorLabel={this.state.errorSummary} emailLabel={this.state.emailLabel} />
                                <label className="govuk-error-message">
                                    {this.state.errorTextEmail}
                                </label>
                                <input className={`${this.state.validation.emailAddress}`} id="email" name="email" type="email" value={this.state.emailAddress} onChange={this.handleEmailChange} autoComplete="email" spellCheck="true" aria-describedby="email-hint email-error" pattern="^([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x22([^\x0d\x22\x5c\x80-\xff]|\x5c[\x00-\x7f])*\x22))*\x40([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d)(\x2e([^\x00-\x20\x22\x28\x29\x2c\x2e\x3a-\x3c\x3e\x40\x5b-\x5d\x7f-\xff]+|\x5b([^\x0d\x5b-\x5d\x80-\xff]|\x5c[\x00-\x7f])*\x5d))*$" />
                            </div>
                            <div className="govuk-!-padding-bottom-5"></div>
                            <div className={this.state.classNameforPhoneNumber}>
                                <Label nameofform="namedetails" texttitle="Prefered phone number" errorLabel={this.state.errorSummary} errorLabel={this.state.errorSummary} phoneLabel={this.state.phoneLabel} />
                                <label className="govuk-error-message">
                                    {this.state.errorTextPhoneNumber}
                                </label>
                                <input className={`${this.state.validation.phoneNumber}`} id="phonenumber" name="phonenumber" type="tel" aria-describedby="telephone-number-error" autoComplete="tel" value={this.state.phoneNumber} onChange={this.handlePreferedNumberChange} pattern="^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$" />
                            </div>
                            <div className="govuk-!-padding-bottom-5"></div>
                            <div className={this.state.classNameforContactMethod}>
                                <fieldset className="govuk-fieldset govuk-!-padding-bottom-2" aria-describedby="changed-name-hint">
                                    <legend className="govuk-fieldset__legend govuk-fieldset__legend--xl">
                                        <h1 className="govuk-heading-l">
                                            How do you want to be contacted?
                                    </h1>
                                    </legend>
                                    <label className="govuk-error-message">
                                        {this.state.errorTextContactMethod}
                                    </label>
                                    <div className="govuk-radios govuk-radios--inline">
                                        <div className="govuk-radios__item">
                                            <input className="govuk-radios__input" id="changed-name-1" name="changed-name" type="radio" value="email" checked={this.state.contactMethod === "email"} onChange={this.handleChange} />
                                            <label className="govuk-label govuk-radios__label" htmlFor="changed-name-1">
                                                Email
                                    </label>
                                        </div>
                                        <div className="govuk-radios__item">
                                            <input className="govuk-radios__input" id="changed-name-2" name="changed-name" type="radio" value="phone" checked={this.state.contactMethod === "phone"} onChange={this.handleChange} />
                                            <label className="govuk-label govuk-radios__label" htmlFor="changed-name-2">
                                                Phone
                                    </label>
                                        </div>
                                        <div className="govuk-radios__item">
                                            <input className="govuk-radios__input" id="changed-name-3" name="changed-name" type="radio" value="textmessage" checked={this.state.contactMethod === "textmessage"} onChange={this.handleChange} />
                                            <label className="govuk-label govuk-radios__label" htmlFor="changed-name-3">
                                                Text Message
                                    </label>
                                        </div>
                                    </div>
                                </fieldset>
                            </div>
                            {/* disabled={!this.state.contactMethodSelection} */}
                            <input type="submit" className="govuk-button" value="Continue" />
                        </div>
                    </div>
                </form>
                <Footer />
            </div>
        );
    }
}

export default Tenant;