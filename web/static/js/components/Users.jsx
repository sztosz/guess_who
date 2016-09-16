import React from 'react';

class Users extends React.Component {
  handleClick(e) {
    this.props.setVisibility('question')
  }
  render() {
    return (
      <div>
        <p>Tu będą kafelki userów</p>
        <a className="button" onClick={this.handleClick.bind(this)}>Start the game</a>
      </div>
    );
  }
}

export default Users
