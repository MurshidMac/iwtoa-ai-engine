import React, { Component } from 'react';

class CounterText extends React.Component{

  state = {
    length: 1000
  }
  constructor(props){
      super(props);
  }

  getRemainingCharactors(sizeofcharactors){
      return this.state.length - sizeofcharactors;
  }

  render () {
    let count = this.getRemainingCharactors(this.props.lengthof);
    if(isNaN(count)){
      count = 1000;
    }
    return (
      <p className="govuk-hint">You have  {  count } charactors remaining</p>
    );
  }

};

export default CounterText;