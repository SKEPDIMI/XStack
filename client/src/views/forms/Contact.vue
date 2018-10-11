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
          <h1>CONTACT US</h1>
        </div>
          <form @submit.prevent="handleSubmit">
            <label>FULL NAME</label>
            <input v-model="formData.name" placeholder="Enter your name" required>
            <div class="side-by-side">
              <div>
                <label>EMAIL</label>
                <input v-model="formData.email" type="email" placeholder="Enter your email" required>
              </div>
              <div>
                <label>PHONE</label>
                <input v-model="formData.phone" placeholder="Enter your phone">
              </div>
            </div>
            <label>NEEDED SERVICES*</label>
            <select v-model="formData.services" type="select" required>
              <option value="web development">Web development</option>
              <option value="mobile development">Mobile development</option>
              <option value="software consulting">Software consulting</option>
              <option value="business automation">Business automation</option>
            </select>
            <label>MESSAGE</label>
            <textarea v-model="formData.message" cols="30" rows="10" placeholder="Your message here..." required>

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
  name: 'Contact',
  data() {
    return {
      formData: {
        name: '',
        email: '',
        phone: '',
        services: '',
        message: '',
      }
    }
  },
  methods: {
    handleSubmit() {
    const {
      name,
      email,
      phone,
      services,
      message
    } = this.formData

    let data = {name, email, phone, services, message};

    // send email here

    },
  },
}
</script>

<style>
.contact .main {
  background: white;
  padding: 0;
  align-items: stretch;
  min-height: 90vh;
}
.contact .img {
  flex: 2;
  background-position: center;
  background-size: cover;

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

@media screen and (max-width: 620px) {
  .contact .main {
    flex-direction: column;
  }
  .contact .img {
    align-items: flex-start;
    padding: 10px 20px;
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    align-items: stretch;
    background-attachment: fixed;
  }
  .contact .img > div {
    min-width: 0;
  }
  
}
</style>