import React, { Component } from 'react';
import HeaderWithService from '../custom-components/HeaderWithService';
import Footer from '../components/Footer';
import { initAll } from 'govuk-frontend';
import getInfoAddress from '../functions/getInfoAddress';




class TenantPostCodePage extends Component {




    key1 = '1JMn9VPgikKhk4wHzB8p0A18311';
    key2 = 'epuYIXbj706AdPB1_-M9qw18364';
    key3 = 'xLKnAYUnVEGN_9ajePwDxg18363';
    key4 = 'mL8LCCECq0OMWVKQAXyi2g18546';
    key5 = 'Out-t23WW0mZlsiA6U4a1Q18679';
    key6 = 'ZmnJaSRo0EChk7uYi6i_Eg18682';
    API_KEY = this.key1;

    state = {
        query: '',
        redirectToReferrer: false,
        fullName: '',
        emailAddress: '',
        phoneNumber: '',
        contactMethod: '',
        results: [],
        resultState: false,
        error: null,
        errorInfo: null,
        classNameForPostalCode: ' govuk-form-group ',
        initialError: null,
        errorText: '',
        errorFromPostcode: null,
        axiosResponse: null,
        correctResponse: null,
        wrongResponse: null,
    }

    constructor(props) {
        super(props);

        if (this.props.location.state == undefined) {
            this.props.history.push({
                pathname: '/'
            });
        } else {
            this.state = {
                redirectToReferrer: false,
                fullName: this.props.location.state.fullName,
                emailAddress: this.props.location.state.emailAddress,
                phoneNumber: this.props.location.state.phoneNumber,
                contactMethod: this.props.location.state.contactMethod
            }

            console.log(this.props.location.state.fullName);
            console.log(this.props.location.state.emailAddress);
            console.log(this.props.location.state.phoneNumber);
            console.log(this.props.location.state.contactMethod);
        }
    }


    // this will return a response of error or correct
    getInfo = () => {
        return getInfoAddress(this.state.query, this.API_KEY).then(res => {
            this.setState({ results: res })
            //console.log('Response from the address', res)
            return res;
        }).catch(err => {
            // console.log(
            //     'please check the error in the response for address '
            // );
            return err;
        });
    }

    componentDidCatch(error, errorInfo) {
        this.setState({ error: error, errorInfo: errorInfo })
    }

    componentDidMount() {
        initAll();
    }

    handleInputChange = () => {
        console.log('handleInputChange called. ');
        this.setState({
            query: this.search.value
        }, () => {
          console.log('handleInputChange called. 1');
            if (this.state.query && this.state.query.length > 1) {
              console.log('handleInputChange called. 2');

                this.state.axiosResponse = this.getInfo()
                    .then(res => {
                        console.log('Response from the search query', res.status, this.API_KEY);

                        if ((res.status == 400 || res.status == 429) && this.API_KEY == this.key1) {
                            //console.log('I am here, the post code is not real 400');
                            this.API_KEY = this.key2;
                            return getInfoAddress(this.state.query, this.key2).then(res => {
                              console.log('Response from the search query', res.status, this.API_KEY);
                                //console.log('Response from the address', res);
                                if ((res.status == 400 || res.status == 429) && this.API_KEY == this.key2) {
                                    this.API_KEY = this.key3;
                                    return getInfoAddress(this.state.query, this.key3).then(res => {
                                      console.log('Response from the search query', res.status, this.API_KEY);
                                        if ((res.status == 400 || res.status == 429) && this.API_KEY == this.key3) {
                                            this.API_KEY = this.key4;
                                            return getInfoAddress(this.state.query, this.key4).then(res => {
                                              console.log('Response from the search query', res.status, this.API_KEY);
                                                if ((res.status == 400 || res.status == 429) && this.API_KEY == this.key4) {
                                                    this.API_KEY = this.key5;
                                                    return getInfoAddress(this.state.query, this.key5).then(res => {
                                                      console.log('Response from the search query', res.status, this.API_KEY);
                                                        if ((res.status == 400 || res.status == 429) && this.API_KEY == this.key5) {
                                                            this.API_KEY = this.key6;
                                                            return getInfoAddress(this.state.query, this.key6).then(res => {
                                                                this.setState({ results: res });
                                                                return this.state.correctResponse = res
                                                            }).catch(err => {
                                                                return err
                                                            })
                                                        } else {
                                                            this.setState({ results: res });
                                                            return this.state.correctResponse = res
                                                        }
                                                    }).catch(err => {
                                                        return err;
                                                    })
                                                }
                                                else {
                                                    this.setState({ results: res });
                                                    return this.state.correctResponse = res
                                                }
                                            }).catch(err => {
                                                return err;
                                            })
                                        } else {
                                            this.setState({ results: res });
                                            return this.state.correctResponse = res
                                        }
                                    }).catch(err => {
                                        return err
                                    })
                                } else {
                                    this.setState({ results: res });
                                    return this.state.correctResponse = res
                                }
                            }).catch(err => {
                                // console.log(
                                //     'please check the error in the response for address '
                                // );
                                return err;
                            });
                        } else {
                            this.setState({ results: res });
                            return this.state.correctResponse = res
                        }

                    }).catch(error => {
                        console.log('There is an error in the query', error)
                        if (error.response.status == 429 && this.API_KEY == this.key1) {
                            //console.log("Second API KEY" + this.API_KEY);
                            return getInfoAddress(this.state.query, this.key2).then(res => {
                                this.setState({ results: res })
                                // console.log('Response from the address', res)
                                return res;
                            }).catch(err => {
                                // console.log(
                                //     'please check the error in the response for address '
                                // );
                                return err;
                            });


                        } else if (error.response.status == 429 && API_KEY == key2) {
                            API_KEY = key3;
                            // console.log("Third API KEY" + API_KEY);
                            search(searchTerm, url, API_KEY);
                            return
                        }


                        if (error.response.status == 429 && API_KEY == key1) {
                            API_KEY = key2;
                            //console.log("Second API KEY" + API_KEY);
                            return getInfoAddress(this.state.query, key2).then(res => {
                                this.setState({ results: res })
                                //console.log('Response from the address', res)
                                return res;
                            }).catch(err => {
                                // console.log(
                                //     'please check the error in the response for address '
                                // );
                                return err;
                            });
                        } else if (error.response.status == 429 && API_KEY == key2) {
                            API_KEY = key3;
                            console.log("Third API KEY" + API_KEY);
                            search(searchTerm, url, API_KEY);
                            return error.response
                        } else if (error.response.status == 429 && API_KEY == key3) {
                            API_KEY = key4;
                            console.log("4Th API KEY" + API_KEY);
                            return error.response.status
                        } else if (error.response.status == 429 && API_KEY == key4) {
                            API_KEY = key5;
                            console.log("5Th API KEY" + API_KEY);
                            return error.response.status
                        } else if (error.response.status == 429 && API_KEY == key5) {
                            API_KEY = key6;
                            console.log("6Th API KEY" + API_KEY);
                            return error.response.status
                        } else if (error.response.status == 429 && API_KEY == key6) {
                            API_KEY = key1;
                            console.log("First API KEY" + API_KEY);
                            return error.response.status
                        } else {
                            return error.response;
                        }

                    });
                //console.log(this.state.axiosResponse);
            }
            return this.state.axiosResponse;
        });
        //console.log('Response in the handle input change', this.state.axiosResponse)
    }

    checkState() {
        if (this.state.query == '') {
            this.setState({
                classNameForPostalCode: 'govuk-form-group govuk-form-group--error',
                errorText: 'Enter a real postcode'
            });
            return false;
        } else if (this.state.axiosResponse != null && this.state.correctResponse != null) {
            // console.log('Axios response in the error page ', this.state.axiosResponse);
            // console.log('Status of the axios Code', this.state.axiosResponse.statusText)
            // console.log('Axios correct response', this.state.correctResponse);

            if (this.state.correctResponse.addresses != null) {
                this.setState({
                    resultState: true,
                });
                return true;
            } else {

                if (this.state.axiosResponse.status != 400) {
                    this.setState({
                        classNameForPostalCode: 'govuk-form-group govuk-form-group--error',
                        errorText: 'Enter a real postcode',
                        resultState: false,
                        results: []
                    });
                    return false
                } else {
                    this.setState({
                        resultState: false,
                        results: []
                    });
                    return false
                }

            }
        }
    }

    handleSubmit(event) {
        event.preventDefault();
        // this.setState({
        //     redirectToReferrer: true
        // });
        let statevar = this.checkState();
        // console.log('Status of the variable ', statevar)
        if (statevar) {
            this.props.history.push({
                pathname: '/address',
                state: {
                    fullName: this.state.fullName,
                    emailAddress: this.state.emailAddress,
                    phoneNumber: this.state.phoneNumber,
                    contactMethod: this.state.contactMethod,
                    results: this.state.results,
                    query: this.state.query
                }
            });
        }

    }

    render() {

        return (
            <div>
                <HeaderWithService serviceTitle="IWTOA Engine" />
                <form onSubmit={this.handleSubmit.bind(this)}>
                    <div className="govuk-width-container ">
                        <main className="govuk-main-wrapper">
                            <div className="govuk-grid-row">
                                <div className="govuk-grid-column-two-thirds">
                                    <h1 className="govuk-heading-l">What is your address?</h1>
                                    <p className="govuk-hint">We'll send our field workers to this address</p>
                                </div>
                            </div>
                            <div className="govuk-grid-row">
                                <div className="govuk-grid-column-two-thirds">
                                    <div className={`${this.state.classNameForPostalCode}`}>
                                        <div>
                                            <label className="govuk-label" htmlFor="address-postcode">
                                                Postcode
                                            </label>
                                            <label className="govuk-error-message">
                                                {this.state.errorText}
                                            </label>
                                        </div>
                                        <input className="govuk-input govuk-input--width-10"
                                            id="address"
                                            name="address"
                                            type="text"
                                            ref={input => this.search = input}
                                            onChange={this.handleInputChange}
                                            autoComplete="street-address"
                                            required
                                        />
                                        {/* <Suggestions results={this.state.results} /> */}
                                        <div className="govuk-!-padding-bottom-5"></div>
                                    </div>
                                </div>
                            </div>
                            <input type="submit" className="govuk-button" value="Find address" disabled={!this.state.results} />
                        </main>
                    </div>
                </form>
                <Footer />
            </div >
        );
    }
}

export default TenantPostCodePage;
