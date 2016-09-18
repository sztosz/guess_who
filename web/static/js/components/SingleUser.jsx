import React from 'react';
import { setVisibility, getUserRequest } from '../actions'
import { connect } from 'react-redux'

class SingleUser extends React.Component {

  handleOnClick(e){
  	e.preventDefault()
  }

  render() {
  	let user = this.props.item.photo_url ? <img src={this.props.item.photo_url}/> : <div className="imagePlaceholder"><span>{this.props.item.name}</span></div>

    return (
      <div>
      	<div className="singleImage" onClick={this.handleOnClick.bind(this)}>
      		{user}
      	</div>
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
