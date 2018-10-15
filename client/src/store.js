const defaultUser = {
  email: '',
  id: null,
  uid: null,
  authorized: false,
  loading: true,
}

export default new Vuex.Store({
  state: {
    currentUser: defaultUser,
  },
  mutations: {
    setDefault: state => ({
      ...defaultUser,
      loading: false
    }),
    setUser: (state, user) => ({
      ...defaultUser,
      ...user,
      loading: false,
      authorized: true
    })
  }
});