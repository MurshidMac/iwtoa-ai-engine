import React, { Component } from 'react';
import Header from '@govuk-react/header';


class Processes extends Component {

    constructor(props) {
        super(props);
        this.state = {
            hits: [],
            fetching: true
        };
    }

    componentDidMount() {
        const token = localStorage.getItem('kc_token');
        console.log('token is ', token);

        fetch('/process-api/repository/process-definitions', {
            method: "GET",
            headers: {
                "Authorization": "Bearer " + token
            }
        }
        ).then(response => {
            if (!response.ok) {
                throw new Error(`status ${response.status}`);
            }
            return response.json();
        }).then(json => {
            console.log('this.state.hits', json);
            this.setState({
                hits: json.data,
                fetching: false
            });
        }).catch(e => {
            console.log('API call failed:', e);
        })

    }

    render() {

        return (
            <div>
                <Header level={1}>List of Processes</Header>

                <ul>
                    {this.state.hits.map(hit =>
                        <li key={hit.id}>
                            <p>{hit.name}</p>
                        </li>
                    )}
                </ul>

            </div>

        );
    }
}

export default Processes;