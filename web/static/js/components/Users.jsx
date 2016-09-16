import React from 'react';
import { setVisibility, getUserRequest } from '../actions'
import { connect } from 'react-redux'
import thunkMiddleware from 'redux-thunk'
import axios from 'axios'
import SingleUser from './SingleUser'

const Users = ({ visibility, users }) => (
  <div>
    <p className="user">Tu będą kafelki userów</p>
    {
      users.map(user =>
        <span>{user.id}</span>
      )
    }
  </div>
)

// class Users extends React.Component {
//   componentDidMount() {
//     this.props.getUserRequest()
//   }

//   handleClick(e) {
//     this.props.setVisibility('question')
//   }

//   render() {
//     return (
//       <div>
//         <p className="user">Tu będą kafelki userów</p>
//       </div>
//     );
//   }
// }


const mapStateToProps = (state) => {
  return {
    users: state.users,
    visibility: state.visibility
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
  }
}

export default connect(mapStateToProps, mapDispatchToProps)(Users)

