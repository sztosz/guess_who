import React from 'react';
import { setVisibility, getUserRequest } from '../actions'
import { connect } from 'react-redux'
import Users from './Users'
import Question from './Question'
import Result from './Result'
import thunkMiddleware from 'redux-thunk'
import axios from 'axios'

const App = ({ onClick, visibility, users }) => (
  <div>
    <div id="content">
      <h2>Welcome to Guess Who!</h2>
      <p className="tagline">Check how much do you know about your co-workers</p>
      <a className="button" onClick={onClick}>Play</a>
    </div>
    {/*<Users users={users} visibility={visibility} />*/}
    <Users users={users} />
  </div>
  //   let content = null
  //   switch (this.props.visibility) {
  //     case 'welcome_page':
  //       content =
  //         (<div id="content">
  //           <h2>Welcome to Guess Who!</h2>
  //           <p className="tagline">Check how much do you know about your co-workers</p>
  //           <a className="button" onClick={this.handleClick.bind(this)}>Play</a>
  //         </div>)
  //       break
  //     case 'users':
  //       content = <Users setVisibility={this.props.setVisibility} getUserRequest={this.props.getUserRequest} />
  //       break
  //     case 'question':
  //       content = <Question setVisibility={this.props.setVisibility}/>
  //       break
  //     case 'result':
  //       content = <Result setVisibility={this.props.setVisibility}/>
  //       break
  //     default:
  //       content = null
  //   }
  //   return (
  //     <div>
  //       {content}
  //     </div>
  //   );
  // }
)

const mapStateToProps = (state) => {
  return {
    users: state.users,
    visibility: state.visibility
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    onClick: () => {
      // dispatch(setVisibility('users'))
      dispatch(getUserRequest())
    }
  }
  // dispatch('VISIBILITY', { visibility: 'users' })
  // return {setVisibility, getUserRequest}
}

export default connect(mapStateToProps, mapDispatchToProps)(App)
