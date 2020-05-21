import React, { Component } from 'react';
import { initAll } from 'govuk-frontend';

class HeaderServiceName extends Component {

    constructor(props){
        super(props);

    }

    componentDidMount(){
        //initAll()
    }

    render() {
        return (
            <div className="govuk-header__content">
                <a href="#" className="govuk-header__link govuk-header__link--service-name">
                    {this.props.serviceTitle}
                </a>
            </div>
        );
    }
}

export default HeaderServiceName;