import { combineReducers } from 'redux';

const initialState = {
	visibility: 'welcome_page',
  users: []
}

export const users = (state = initialState, action) => {
  switch (action.type) {
    case 'GET_USERS_SUCCESS':
      return Object.assign({}, state, { users: action.payload.users }, { visibility: initialState.visibility })
    default:
      return state.users
  }
}

export const visibility = (state = initialState, action) => {
  switch (action.type) {
    case 'VISIBILITY':
    	return Object.assign({}, state.visibility, action.visibility)
    default:
      return state.visibility
  }
}

export default combineReducers({
  users,
  visibility
});
