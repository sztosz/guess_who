export default (state = {visibility: "welcome_page"}, action=[]) => {
  switch (action.type) {
    case 'VISIBILITY':
      return {
      	visibility : action.visibility
      }
    default:
      return state
  }
}
