<template>
  <header id='main-header'>
    <a href='/'>
      <img src="https://www.rays.com/wp-content/uploads/2018/06/x-close-icon-white.png" alt="icon">
    </a>

    <div class="nav">
      <a href="/" v-bind:class="{ active: true }">HOME</a>
      <a href="/services">SERVICES</a>
      <a href="/about">ABOUT</a>
      <a href="/team">TEAM</a>
      <a href="/blog">BLOG</a>
      <a href="/login">LOGIN</a>
      <a href="/signup" class="button active">SIGN UP</a>
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
  }
  header a.button:hover {
    color: white;
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
</style>
