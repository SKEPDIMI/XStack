<template>
  <div class="side-menu" id="drawer">
    
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
  padding: 20px;
  
  background: #1E2330;
  color: white;
  z-index: 100;
  box-shadow: inset 10px 0px 15px rgba(19, 22, 31, 0.4);

  /* Hide this! */
  right: -300px;
  transition: all 0.5s ease;
}
/* We need to make changes to the width of the sidemenu on devices smaller or equal than 400px */
@media screen and (max-width: 410px) {
  
}
</style>
