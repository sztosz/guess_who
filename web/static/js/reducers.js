export default (state = 0, action=[]) => {
  switch (action.type) {
    case 'VISIBILITY':
      return {
      	visibility : action.visibility
      }
    default:
      return state
  }
}
