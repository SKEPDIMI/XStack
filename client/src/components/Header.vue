<template>
  <header id='main-header'>
    <div class="left">
      <router-link to='/'>
        <img src="@/assets/logo/1.png" alt="icon">
      </router-link>
    </div>

    <div class="nav">
      <router-link :to="'/'" exact-active-class="active">HOME</router-link>
      <router-link :to="'/services'" active-class="active">SERVICES</router-link>
      <router-link :to="'/about'" active-class="active">ABOUT</router-link>
      <router-link :to="'/team'" active-class="active">TEAM</router-link>
      <router-link :to="'/blog'" active-class="active">BLOG</router-link>

      <router-link :to="'/login'" active-class="active">LOGIN</router-link>
      <router-link :to="'/signup'" active-class="active" class="button">SIGN UP</router-link>
      <div v-on:click="toggleSidemenu" class="toggle" ref="toggleButton">
        <span class="bar one" ref="burgerTop"></span>
        <span class="bar two" ref="burgerMid"></span>
        <span class="bar three" ref="burgerBot"></span>
      </div>
    </div>
  </header>
</template>
<script>
export default {
  name: 'Header',
  methods: {
    toggleSidemenu(event) {
      const app = document.querySelector('.app');
      app.classList.toggle('active-drawer');
    }
  }
};
</script>
<style scoped>
  header {
    background-color: transparent;
    position: relative;
    width: 100%;
    color: #666c78;
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
    display: inline-flex;
    align-items: center;
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
  header .left {
    align-self: stretch;
    display: flex;
    align-items: center;
    padding: 0 20% 0 0;
    background: white;
    clip-path: polygon(0 0, 100% 0, 60% 100%, 0% 100%);
  }
  header img {
    height: 2.5em;
  }
  /*
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
  */

  header .toggle {
    width: 10vh;
    height: 10vh;
    cursor: pointer;
    z-index: 10;
    display: flex;
    flex-direction: column;
    justify-content: space-around;
    align-items: stretch;
    margin-left: 1em;
    padding: 10px;
  }
  header .toggle .bar {
    display: block;
    position: relative;
    height: 3px;
    width: 100%;
    background: white;

    transition: .2s all ease-in-out;
  }
  @media screen and (max-width: 700px) {
    header .nav a {
      display: none;
    }
    header.active {
      background: transparent;
    }
    header img {
      height: 1.5em;
    }
    header .toggle {
      margin-left: 0;
      padding: 10%;
    }
    header .left {
      padding: 0 0;
      min-width: 50%;
      clip-path: none;
    }
  }
</style>
