import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderServiceName';
class Autocompletetest extends Component {
    render() {
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <input/>
            </div>
        );
    }
}

export default Autocompletetest;