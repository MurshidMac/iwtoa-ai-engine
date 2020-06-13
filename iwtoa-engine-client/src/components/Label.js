import React, { Component } from 'react';
import { initAll } from 'govuk-frontend';

class Label extends Component {

    state = {
        errorLabel: false,
        errorText: '',
        nameLabel: false,
        emailLabel: false,
        phoneLabel: false
    }
    constructor(props) {
        super(props);
        this.state.errorLabel = this.props.errorLabel;
    }
    componentDidMount() {
        initAll();
    }

    render() {
        console.log('error from label', this.state.errorLabel);

        const valueofState = this.state.errorLabel;
        let description = "";

        if (this.state.errorLabel == false) {
            return (
                <div>
                    <label className="govuk-label" htmlFor={this.props.nameofform}>
                        {this.props.texttitle}
                    </label>
                    <span id="email-hint" className="govuk-hint">
                        {this.props.texthint}
                    </span>
                </div>
            );
        } else {
            if(this.state.nameLabel == true){
                description = "Enter your full name"
                return (
                    <div>
                        <label className="govuk-label" htmlFor={this.props.nameofform}>
                            {this.props.texttitle}
                        </label>
                        <span id="email-hint" className="govuk-hint">
                            {this.props.texthint}
                        </span>
                        <span id="email-error" className="govuk-error-message">
                            <span className="govuk-visually-hidden">Error:</span> {description}
                        </span>
                    </div>
                );
            }
            if(this.state.emailLabel == true){
                description = "Enter an email address in the correct format, like name@example.com"
                return (
                    <div>
                        <label className="govuk-label" htmlFor={this.props.nameofform}>
                            {this.props.texttitle}
                        </label>
                        <span id="email-hint" className="govuk-hint">
                            {this.props.texthint}
                        </span>
                        <span id="email-error" className="govuk-error-message">
                            <span className="govuk-visually-hidden">Error:</span> {description}
                        </span>
                    </div>
                );
            }

            if(this.state.phoneLabel == true){
                description = "Enter a UK telephone number"
                return (
                    <div>
                        <label className="govuk-label" htmlFor={this.props.nameofform}>
                            {this.props.texttitle}
                        </label>
                        <span id="email-hint" className="govuk-hint">
                            {this.props.texthint}
                        </span>
                        <span id="email-error" className="govuk-error-message">
                            <span className="govuk-visually-hidden">Error:</span> {description}
                        </span>
                    </div>
                );
            }
            
        }
    }
}

export default Label;
