import React from 'react';

class Result extends React.Component {
  handleClick(e) {
    this.props.setVisibility('welcome_page')
  }
  render() {
    return (
      <div>
        <p>Wyniki</p>
        <a className="button" onClick={this.handleClick.bind(this)}>Zagraj ponownie</a>
      </div>
    );
  }
}

export default Result
