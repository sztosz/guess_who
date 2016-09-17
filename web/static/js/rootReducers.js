import { combineReducers } from 'redux';

const initialState = {
	visibility: 'welcome_page',
  users: []
}

export const users = (state = initialState, action) => {
  console.log(action)
  switch (action.type) {
    case 'GET_USERS_SUCCESS':
      return Object.assign({}, state, { users: action.payload.users }, { visibility: initialState.visibility })
    default:
      return state
  }
}

export const visibility = (state = initialState, action) => {
  // console.log(action)
  switch (action.type) {
    case 'VISIBILITY':
    	return Object.assign({}, state.visibility, action.visibility)
    default:
      return state
  }
}

export default combineReducers({
  users: users,
  visibility: visibility
});
