import React from 'react';
import { setVisibility } from '../actions'
import { connect } from 'react-redux'
import Users from './Users'
import Question from './Question'
import Result from './Result'

class App extends React.Component {
  handleOnClick (e){
    e.preventDefault()
    this.props.setVisibility('users')
  }

  render() {
    let content = null
    switch (this.props.visibility) {
      case 'welcome':
        content =
          (<div>
            <h2>Welcome to Guess Who!</h2>
            <p className="tagline">Check how much do you know about your co-workers</p>
            <a className="button" onClick={this.handleOnClick.bind(this)}>Play</a>
          </div>)
        break
      case 'users':
        content = <Users />
        break
      case 'question':
        content = <Question />
        break
      case 'result':
        content = <Result />
        break
      default:
        content = null
    }
    return (
      <div id="content">
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
