import React from 'react';
import { setVisibility, getUserRequest } from '../actions'
import { connect } from 'react-redux'
import SingleUser from './SingleUser'

class Users extends React.Component {
  componentDidMount() {
    this.props.getUserRequest()
  }

  handleClick(e) {
    e.preventDefault()
    this.props.setVisibility('question')
  }

  render() {
    return (
      <div>
        <h2>Who are you?</h2>
        <div className="usersWrap">
          {
            this.props.users.map(item => <SingleUser key={item.id} item={item}/>)
          }
        </div>
        <a className="button" onClick={this.handleClick.bind(this)}>Play</a>
      </div>
    );
  }
}

const mapStateToProps = (state) => {
  return {
    users: state.users,
    visibility: state.visibility
  }
}

export default connect(mapStateToProps, {setVisibility, getUserRequest})(Users)

