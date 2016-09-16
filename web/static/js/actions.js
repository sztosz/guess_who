import axios from 'axios'

export function setVisibility(visibility) {
  return {
    type: 'VISIBILITY',
    visibility
  }
}

function getUsersSuccess(data) {
  return {
    type: 'GET_USERS_SUCCESS',
    payload: data["data"]
  }
}

function getUsersError(err) {
  return {
    type: 'GET_USERS_ERROR',
    payload: err
  }
}

export function getUserRequest() {
  return function(dispatch) {
    axios.get('http://localhost:4000/api/users')
      .then((response) => {
        // console.log("RESPONSE")
        // console.log(response.data)
        dispatch(getUsersSuccess(response.data))
      })
      .catch((err) => {
        // console.log('ERROR')
        // console.log(err)
        dispatch(getUsersError(err))
      })
  }
}
