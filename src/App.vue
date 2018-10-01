<template>
  <div class="app">
    <Header/>
    <router-view/>
  </div>
</template>

<script>
import Header from '@/components/Header';

export default {
  name: 'App',
  components: {
    Header,
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
