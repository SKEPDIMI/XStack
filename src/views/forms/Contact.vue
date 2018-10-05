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
          <form>
            <label>FULL NAME</label>
            <input placeholder="Enter your name">
            <div class="side-by-side">
              <div>
                <label>EMAIL</label>
                <input type="email" placeholder="Enter your email">
              </div>
              <div>
                <label>PHONE</label>
                <input placeholder="Enter your phone">
              </div>
            </div>
            <label>NEEDED SERVICES*</label>
            <select type="select">
              <option value="web development">Web development</option>
              <option value="mobile development">Mobile development</option>
              <option value="software consulting">Software consulting</option>
              <option value="business automation">Business automation</option>
            </select>
            <label>MESSAGE</label>
            <textarea cols="30" rows="10" placeholder="Your message here...">

            </textarea>
            <button type="submit">
              Submit
            </button>
          </form>
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
  text-align: left;
}
.contact .form-container .header {
  display: inline-flex;
  align-items: center;
  justify-content: center;
  width: 100%;
  border-bottom: 1px solid #b5bdca;
}
.contact label {
  font-size: large;
  font-weight: bold;
}
.contact input, .contact select, .contact textarea {
  width: 100%;
  border-radius: 2px;
  padding: 10px;
  border: 1px solid rgb(185, 185, 185);
}
.contact .side-by-side {
  display: inline-flex;
  justify-content: space-evenly;
  width: 100%;
}
.contact .side-by-side > div {
  flex: 1;
  margin-right: 4px;
}
.contact .form-container button {
  width: 100%;
  background-color: rgb(32, 32, 32);
  color: white;
  border: none;
  min-height: 5vh;
  border-radius: 2vh;
  padding: 4px 0;
  margin: 5px 0;
  font-size: medium;
}
</style>