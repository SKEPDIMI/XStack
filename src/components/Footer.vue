<template>
  <footer>
    <div class="content">
      <div class="first">
        <h1>XSTACK</h1>
        <p>We provide possibilities for the 
          modern marketplace. <strong>We provide solutions</strong>
        </p>
      </div>
      <div>
        <h2>Explore</h2>
        <ul>
          <li>
            <router-link to="home">Home</router-link>
          </li>
          <li>
            <router-link to="about">About</router-link>
          </li>
          <li>
            <router-link to="services">Services</router-link>
          </li>
          <li>
            <router-link to="contact">Contact</router-link>
          </li>
        </ul>
      </div>
      <div>
        <h2>Get in touch</h2>
        <ul>
          <li>engage@xstack.com</li>
          <li>-</li>
          <li>939 332 1562</li>
        </ul>
      </div>
      <div>
        <h2>Legal</h2>
        <ul>
          <li>Terms</li>
          <li>-</li>
          <li>Privacy</li>
        </ul>
      </div>
      <div class="right">
        <h2>
          <router-link v-if="this.$route.name == 'Landing'" to="about">Next: About</router-link>
          <router-link v-else-if="this.$route.name == 'About'" to="services">Next: Services</router-link>
          <router-link v-else-if="this.$route.name == 'Services'" to="contact">Next: Contact</router-link>
        </h2>
      </div>
    </div>
    <div class="bottom">
      <p>
        © XStack. All Rights Reserved.
      </p>
    </div>
  </footer>
</template>

<script>
export default {
  name: 'Footer',
}
</script>

<style>
footer {
  color: white;
  display: flex;
  flex-direction: column;
  align-items: stretch;
  justify-content: center;
}
footer > div {
  padding: 0 20px;
}
footer h1 {
  margin: 0 0;
  padding: 0;
}
footer .content {
  background-color: rgb(24, 24, 24);
  height: 90vh;
  flex: 1;
  display: flex;
  flex-direction: row;

  padding: 5vh 20px;
}
footer .content > div {
  text-align: left;
  padding-left: 10px;
  margin-right: 10px;
}
footer a {
  color: white;
  text-decoration: none;}
footer .right a {
  border-bottom: 1px solid whitesmoke;
}
footer .first {
  max-width: 300px;
}
footer .right {
  margin-left: auto;
}
footer ul {
  padding: 0;
  margin: 0;
}
footer li {
  list-style: none;
}
footer .bottom {
  background: rgb(24, 24, 24);
  color: #B4BBC3;
  height: 10vh;
}
</style>
