import { combineReducers } from 'redux';


export const users = (state = [], action) => {
  switch (action.type) {
    case 'GET_USERS_SUCCESS':
      return action.payload
    default:
      return state
  }
}

export const visibility = (state = 'welcome', action) => {
  switch (action.type) {
    case 'VISIBILITY':
			return action.visibility
    default:
      return state
  }
}

export default combineReducers({
  users,
  visibility
});
