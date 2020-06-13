import React, { Component } from 'react';
import { initAll } from 'govuk-frontend';
class Main extends Component {
    
    constructor(props) {
        super(props);
    }
    componentDidMount() {
        initAll();    
    }
    
    render() {
        return (
                <main className="govuk-main-wrapper " id="main-content" role="main">
                    <h1 className="govuk-heading-l">{this.props.title}</h1>
                </main>
        );
    }
}

export default Main;