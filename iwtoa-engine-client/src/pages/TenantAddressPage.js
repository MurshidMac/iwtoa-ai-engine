import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';
import Main from '../components/Main';
import Label from '../components/Label';
import { initAll } from 'govuk-frontend';
import { Link } from 'react-router'
class TenantAddressPage extends Component {

    state = {
        searchTerm: '',
        fullName: '',
        emailAddress: '',
        phoneNumber: '',
        contactMethod: '',
        results: '',
        resultsAddress: '',
        selectedAddress: '',
        url: '',
        addressselection: false,
    }

    // staticjson = {
    //     "latitude": 51.461236496935676,
    //     "longitude": -0.19926463382816,
    //     "addresses": [
    //         "14 Point Pleasant, , , , , London, ",
    //         "22 Point Pleasant, , , , , London, ",
    //         "Apartment 1, 12 Point Pleasant, , , , London, ",
    //         "Apartment 1, 18 Point Pleasant, , , , London, ",
    //         "Apartment 1, 24 Point Pleasant, , , , London, ",
    //         "Apartment 10, 12 Point Pleasant, , , , London, ",
    //         "Apartment 10, 18 Point Pleasant, , , , London, ",
    //         "Apartment 10, 24 Point Pleasant, , , , London, ",
    //         "Apartment 11, 18 Point Pleasant, , , , London, ",
    //         "Apartment 11, 24 Point Pleasant, , , , London, ",
    //         "Apartment 12, 18 Point Pleasant, , , , London, ",
    //         "Apartment 12, 24 Point Pleasant, , , , London, ",
    //         "Apartment 13, 18 Point Pleasant, , , , London, ",
    //         "Apartment 13, 24 Point Pleasant, , , , London, ",
    //         "Apartment 14, 18 Point Pleasant, , , , London, ",
    //         "Apartment 14, 24 Point Pleasant, , , , London, ",
    //         "Apartment 15, 18 Point Pleasant, , , , London, ",
    //         "Apartment 15, 24 Point Pleasant, , , , London, ",
    //         "Apartment 16, 18 Point Pleasant, , , , London, ",
    //         "Apartment 16, 24 Point Pleasant, , , , London, ",
    //         "Apartment 17, 18 Point Pleasant, , , , London, ",
    //         "Apartment 17, 24 Point Pleasant, , , , London, ",
    //         "Apartment 18, 18 Point Pleasant, , , , London, ",
    //         "Apartment 18, 24 Point Pleasant, , , , London, ",
    //         "Apartment 19, 18 Point Pleasant, , , , London, ",
    //         "Apartment 19, 24 Point Pleasant, , , , London, ",
    //         "Apartment 2, 12 Point Pleasant, , , , London, ",
    //         "Apartment 2, 18 Point Pleasant, , , , London, ",
    //         "Apartment 2, 24 Point Pleasant, , , , London, ",
    //         "Apartment 20, 18 Point Pleasant, , , , London, ",
    //         "Apartment 20, 24 Point Pleasant, , , , London, ",
    //         "Apartment 21, 18 Point Pleasant, , , , London, ",
    //         "Apartment 21, 24 Point Pleasant, , , , London, ",
    //         "Apartment 22, 18 Point Pleasant, , , , London, ",
    //         "Apartment 22, 24 Point Pleasant, , , , London, ",
    //         "Apartment 23, 18 Point Pleasant, , , , London, ",
    //         "Apartment 23, 24 Point Pleasant, , , , London, ",
    //         "Apartment 24, 18 Point Pleasant, , , , London, ",
    //         "Apartment 24, 24 Point Pleasant, , , , London, ",
    //         "Apartment 25, 18 Point Pleasant, , , , London, ",
    //         "Apartment 25, 24 Point Pleasant, , , , London, ",
    //         "Apartment 26, 18 Point Pleasant, , , , London, ",
    //         "Apartment 26, 24 Point Pleasant, , , , London, ",
    //         "Apartment 3, 12 Point Pleasant, , , , London, ",
    //         "Apartment 3, 18 Point Pleasant, , , , London, ",
    //         "Apartment 3, 24 Point Pleasant, , , , London, ",
    //         "Apartment 4, 12 Point Pleasant, , , , London, ",
    //         "Apartment 4, 18 Point Pleasant, , , , London, ",
    //         "Apartment 4, 24 Point Pleasant, , , , London, ",
    //         "Apartment 5, 12 Point Pleasant, , , , London, ",
    //         "Apartment 5, 18 Point Pleasant, , , , London, ",
    //         "Apartment 5, 24 Point Pleasant, , , , London, ",
    //         "Apartment 6, 12 Point Pleasant, , , , London, ",
    //         "Apartment 6, 18 Point Pleasant, , , , London, ",
    //         "Apartment 6, 24 Point Pleasant, , , , London, ",
    //         "Apartment 7, 12 Point Pleasant, , , , London, ",
    //         "Apartment 7, 18 Point Pleasant, , , , London, ",
    //         "Apartment 7, 24 Point Pleasant, , , , London, ",
    //         "Apartment 8, 12 Point Pleasant, , , , London, ",
    //         "Apartment 8, 18 Point Pleasant, , , , London, ",
    //         "Apartment 8, 24 Point Pleasant, , , , London, ",
    //         "Apartment 9, 12 Point Pleasant, , , , London, ",
    //         "Apartment 9, 18 Point Pleasant, , , , London, ",
    //         "Apartment 9, 24 Point Pleasant, , , , London, ",
    //         "Camerlengo Design, 16 Point Pleasant, , , , London, Greater London",
    //         "Concept Fertility Clinic London, 14 Point Pleasant, , , , London, Greater London",
    //         "Cupcake Mum Ltd, 10 Point Pleasant, , , , London, ",
    //         "Foundation For Paediatric Osteopathy, 22a Point Pleasant, , , , London, ",
    //         "Kurvers International Supply Services, 20 Point Pleasant, , , , London, ",
    //         "Locksmith on Call, 16 Point Pleasant, , , , London, Greater London",
    //         "On Site Massage Co, 16 Point Pleasant, , , , London, Greater London",
    //         "Prosper Technologies Ltd, 16 Point Pleasant, , , , London, Greater London",
    //         "Sporch Ltd, 16 Point Pleasant, , , , London, Greater London",
    //         "Third Door Ltd, 16 Point Pleasant, , , , London, ",
    //         "Unit 1, The Radial, Point Pleasant, , , London, ",
    //         "Unit 11, The Radial, Point Pleasant, , , London, ",
    //         "Unit 3, The Radial, Point Pleasant, , , London, ",
    //         "Unit 4, The Radial, Point Pleasant, , , London, ",
    //         "Unit 5, The Radial, Point Pleasant, , , London, ",
    //         "Unit 6, The Radial, Point Pleasant, , , London, ",
    //         "Unit 8, The Radial, Point Pleasant, , , London, ",
    //         "Whippet, 26 Point Pleasant, , , , London, "
    //     ]
    // }

    constructor(props) {
        super(props);

        if (this.props.location.state == undefined) {
            this.props.history.push({
                pathname: '/'
            });
        } else {
        this.state = {
            searchTerm: props.location.state.query,
            defectPage: false,
            fullName: this.props.location.state.fullName,
            emailAddress: this.props.location.state.emailAddress,
            phoneNumber: this.props.location.state.phoneNumber,
            contactMethod: this.props.location.state.contactMethod,
            resultsAddress: this.props.location.state.results
        }
            console.log(this.props.location.state.fullName);
            console.log(this.props.location.state.emailAddress);
            console.log(this.props.location.state.phoneNumber);
            console.log(this.props.location.state.contactMethod);
            console.log(this.props.location.state.query);
            console.log(this.props.location.state.results);
        }
        this.handleChange = this.handleChange.bind(this);
        this.handleRedirect = this.handleRedirect.bind(this);
    }

    componentDidMount() {
        initAll();
        this.getAllAddresses(this.state.resultsAddress);
    }

    handleSubmit(event) {

        event.preventDefault();
        this.setState({ defectPage: true });

        this.props.history.push({
            pathname: '/defect',
            state: {
                fullName: this.state.fullName,
                emailAddress: this.state.emailAddress,
                phoneNumber: this.state.phoneNumber,
                contactMethod: this.state.contactMethod,
                selectedaddress: this.state.selectedAddress,
                searchTerm: this.state.searchTerm
            }
        });
        console.log('Selected this address', this.state.selectedAddress);
    }

    getAllAddresses(json) {
        //const object = JSON.parse(json);
        //console.log(json);
        json.addresses.map((item, index) => {
            console.log(index);
            console.log(item);
        })
    }

    handleChange(event) {
        this.setState({
            selectedAddress: event.target.value,
            addressselection: true
        });
        console.log('getting the state of the address selected', this.state.selectedAddress)
    }

    handleRedirect(event) {
        this.setState({
            click: event.target.value,
            url: '/postcode'
        })

        this.props.history.push({
            pathname: '/postcode',
            state: {
                fullName: this.state.fullName,
                emailAddress: this.state.emailAddress,
                phoneNumber: this.state.phoneNumber,
                contactMethod: this.state.contactMethod,
                searchTerm: this.state.searchTerm
            }
        })
    }

    render() {
        const items = this.state.resultsAddress;
        if (items) console.log("Items: ", items.toString());
        //console.log('This is a static json', this.staticjson);
        console.log(this.state);
        console.log(this.state.resultsAddress.length)
        
        return (
            <div>
                <HeaderWithService serviceTitle="New Tenancy" />
                <form onSubmit={this.handleSubmit.bind(this)}>
                    <div className="govuk-width-container ">
                        <main className="govuk-main-wrapper">
                            <div className="govuk-grid-row govuk-!-padding-bottom-2">
                                <div className="govuk-grid-column-two-thirds">
                                    <h1 className="govuk-heading-l">What is your address?</h1>
                                </div>
                            </div>
                            <div className="govuk-grid-row govuk-!-padding-bottom-2">
                                <div className="govuk-grid-column-two-thirds">
                                    <div className="govuk-form-group">
                                        <label className="govuk-heading-s" htmlFor="address-postcode">
                                            Postcode
                                        </label>
                                        <label className="govuk-heading-s govuk-!-padding-bottom-2" htmlFor="address-postcode">
                                            {this.state.searchTerm.toUpperCase()}  <a className="govuk-link" onClick={this.handleRedirect} href='/postcode'>change</a>
                                        </label>
                                        <label className="govuk-heading-s" htmlFor="address-postcode">
                                            Select an address
                                        </label>
                                        {/* <select >
                                            <option value="foundaddress" defaultValue> {this.staticjson.addresses.length}  address found</option>
                                            {this.staticjson.addresses.map((listItems, index) => {
                                                <option value={listItems} >
                                                    {listItems}
                                                </option>
                                            })}
                                        </select> */}
                                        <select className="govuk-select govuk-grid-column-two-thirds" id="sort" name="sort" onChange={this.handleChange} value={this.state.selectedAddress} >
                                            <option value="-----" defaultValue>{this.state.resultsAddress.addresses.length}  address found</option>
                                            {this.state.resultsAddress.addresses.map((x, y) => <option key={y}>{x}</option>)}
                                        </select>
                                        <a href="#main-content" className="govuk-label govuk-!-padding-top-2 govuk-link">I can't find my address on the list</a>
                                    </div>
                                </div>
                                <div className="govuk-grid-column-two-thirds">

                                </div>
                            </div>
                            <input type="submit" disabled={!this.state.addressselection} className="govuk-button" value="Continue" />
                        </main>
                    </div>
                </form>
                <Footer />
            </div>
        );
    }
}

export default TenantAddressPage;