<template>
  <div class="contact">
    <div class="main">
      <div class="img" v-bind:style="{ backgroundImage: 'url(' + require('@/assets/contact.jpg') + ')' }">
        <div>
          <h2>Let's talk</h2>
          <p>+1 939 332 1562</p>
        </div>
        <div>
          <h2>General support</h2>
          <p>engage@xstack.com</p>
        </div>
        <div></div>
      </div>
      <div class="form-container">
        <div class="header">
          <h1>Contact us</h1>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Contact'
}
</script>

<style>
.contact .main {
  background: white;
  padding: 0;
  align-items: stretch;
}
.contact .img {
  flex: 2;
  background-position: center;
  background-size: cover;
  min-height: 90vh;

  display: flex;
  justify-content: center;
  align-items: center;
  flex-direction: column;

  background-color: rgb(32, 32, 32);
  color: white;
  background-blend-mode: overlay;
}
.contact .img > div {
  text-align: left;
  min-width: 300px
}
.contact .form-container {
  flex: 3;
  color: #616e82;
  padding: 0 20px;
}
.contact .form-container .header {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  border-bottom: 1px solid #b5bdca;
}
</style>