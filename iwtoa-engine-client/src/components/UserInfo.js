import React, { Component } from 'react';

class UserInfo extends Component {

  constructor(props) {
    super(props);
    this.state = {
      name: "",
      email: ""
    };
    console.log('this.props.keycloak.localStorage ', this.props.keycloak);
    this.props.keycloak.loadUserInfo().then(userInfo => {
        this.setState({name: userInfo.name, email: userInfo.email})
    });
  }

  render() {
    return (
      <div className="UserInfo">
        <p align="right">{this.state.name}</p>
        <p align="right">{this.state.email}</p>
      </div>
    );
  }
}

export default UserInfo;
