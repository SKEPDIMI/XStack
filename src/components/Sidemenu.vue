<template>
  <div class="side-menu" id="drawer">
    <header>
      <h1>X-STACK</h1>
    </header>
    <ul>
      <router-link :to="'/'" exact-active-class="active">HOME</router-link>
      <router-link :to="'/services'" active-class="active">SERVICES</router-link>
      <router-link :to="'/about'" active-class="active">ABOUT</router-link>
      <router-link :to="'/team'" active-class="active">TEAM</router-link>
      <router-link :to="'/blog'" active-class="active">BLOG</router-link>
    </ul>
  </div>
</template>

<script>
export default {
  name: 'Sidemenu',
}
</script>

<style>
.side-menu {
  position: fixed;
	text-align: center;
  top: 0;
  height: 100%;
	width: 300px;
  
  background: #1E2330;
  color: white;
  z-index: 100;
  box-shadow: inset 7px 0px 18px rgba(19, 22, 31, 0.3);

  /* Hide this! */
  right: -300px;
  transition: all 0.5s ease;
}
.side-menu header {
  background: #878d9c;
  min-height: 10vh;
  display: flex;
  justify-content: center;
  align-items: center;
}
.side-menu h1 {
  font-weight: lighter;
}
.side-menu ul {
  padding: 20px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: space-around;
}
.side-menu a {
  color: white;
  text-decoration: none;
  border-bottom: 1px solid rgb(19, 22, 31);
  width: 100%;
  padding: 10px;
  font-size: large;
}

.side-menu a:last-child {
  border-bottom: none;
}
/* We need to make changes to the width of the sidemenu on devices smaller or equal than 400px */
@media screen and (max-width: 410px) {
  
}
</style>
