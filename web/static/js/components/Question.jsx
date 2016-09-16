import React from 'react';

class Question extends React.Component {
  handleClick(e) {
    this.props.setVisibility('result')
  }
  render() {
    return (
      <div>
        <p>Tu będzie pytanie</p>
        <a className="button" onClick={this.handleClick.bind(this)}>See result</a>
      </div>
    );
  }
}

export default Question
