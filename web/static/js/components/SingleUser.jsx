import React from 'react';
import { setVisibility, getUserRequest } from '../actions'
import { connect } from 'react-redux'
import thunkMiddleware from 'redux-thunk'
import axios from 'axios'

class SingleUser extends React.Component {

  render() {
    return (
      <div>
        <p className="user">USER</p>
      </div>
    );
  }
}

// function mapStateToProps(state){
//   return {
//     visibility: state.visibility,
//     users: state.users
//   }
// }

export default SingleUser
// connect(mapStateToProps, {setVisibility, getUserRequest})(Users)
