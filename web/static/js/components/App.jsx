import React from 'react';
import { setVisibility } from '../actions'
import { connect } from 'react-redux'
import Users from './Users'
import Question from './Question'

class App extends React.Component {
  handleClick(e) {
    this.props.setVisibility('users')
  }

  render() {
    let content = null
    switch (this.props.visibility) {
      case 'welcome_page':
        content =
          (<div id="content">
            <h2>Welcome to Guess Who!</h2>
            <p className="tagline">Check how much do you know about your co-workers</p>
            <a className="button" onClick={this.handleClick.bind(this)}>Play</a>
          </div>)
        break
      case 'users':
        content = <Users setVisibility={this.props.setVisibility}/>
        break
      case 'question':
        content = <Question setVisibility={this.props.setVisibility}/>
        break
      case 'result':
        content = <span>result</span>
        break
      default:
        content = null
    }
    return (
      <div>
        {content}
      </div>
    );
  }
}

function mapStateToProps(state){
  return {
    visibility: state.visibility
  }
}

export default connect(mapStateToProps, {setVisibility})(App)
