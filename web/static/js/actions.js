import axios from 'axios'

export function setVisibility(visibility) {
  return {
    type: 'VISIBILITY',
    visibility
  }
}

function getUsersSuccess(response) {
  return {
    type: 'GET_USERS_SUCCESS',
    payload: response.data
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
        dispatch(getUsersSuccess(response.data))
      })
      .catch((err) => {
        dispatch(getUsersError(err))
      })
  }
}
