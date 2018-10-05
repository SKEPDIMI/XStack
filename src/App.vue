<template>
  <div class="app">
    <Sidemenu />
    <div class="view">
      <Header/>
      <router-view/>
    </div>
  </div>
</template>

<script>
import Header from '@/components/Header';
import Sidemenu from '@/components/Sidemenu';

export default {
  name: 'App',
  components: {
    Header,
    Sidemenu,
  },
};
</script>

<style>
* {
  -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-sizing: border-box;
}
body {
  padding: 0;
  margin: 0;
  font-family: 'Avenir', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  min-height: 100vh;
}
</style>
