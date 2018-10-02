<template>
  <header id='main-header'>
    <a href='/'>
      <img src="https://www.rays.com/wp-content/uploads/2018/06/x-close-icon-white.png" alt="icon">
    </a>

    <div class="nav">
      <router-link :to="'/'" exact-active-class="active">HOME</router-link>
      <router-link :to="'/services'" active-class="active">SERVICES</router-link>
      <router-link :to="'/about'" active-class="active">ABOUT</router-link>
      <router-link :to="'/team'" active-class="active">TEAM</router-link>
      <router-link :to="'/blog'" active-class="active">BLOG</router-link>

      <router-link :to="'/login'" active-class="active">LOGIN</router-link>
      <router-link :to="'/signup'" active-class="active" class="button">SIGN UP</router-link>
    </div>
  </header>
</template>
<script>
export default {};
</script>
<style scoped>
  header {
    position: fixed;
    z-index: 100;
    background-color: transparent;
    top: 0;
    left: 0;
    right: 0;
    color: #666c78;
    padding: 1em 2em;
    display: inline-flex;
    justify-content: space-between;
    align-items: center;
    transition: .5s all ease-in;
  }
  header img {
    float: left;
    height: 1.75em;
  }
  header .nav {
    float: right;
    margin: 1em 0;
  }
  header a {
    text-decoration: none;
    color: #666c78;
    padding: 1em 1.5em;
    font-size:.75em;
    transition: .2s all ease-in-out;
  }
  header a:hover {
    color: white
  }
  header a.active {
    color: white;
  }
  header a.button {
    background: whitesmoke;
    background-color: rgba(255, 255, 255, 0.3);
    border-radius: .25em;
    color: white;
  }
  header a.button:hover {
    background-color: rgba(255, 255, 255, 0.4);
  }
  header.active {
    background-color: #1E2330;
  }
  header.active a {
    color: white;
    transition: .2s all ease-in-out;
  }
  header.active a.active {
    color: #666c78;
  }
  header.active a:hover {
    color: #666c78;
  }
  header.active a.button {
    color: white;
  }
  @media screen and (max-width: 700px) {
    header .nav {
      display: none;
    }
    header.active {
      background: transparent;
    }
    header a {
      background: #1E2330;
      padding: 10px;
      border-radius: 50%;
      box-shadow: 2px 2px 1px rgb(44, 44, 44, 0.5);
    }
  }
</style>
