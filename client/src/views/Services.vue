<template>
  <div class="services">
    <div class="main">
      <div class="container">
        <h2>Best Quality and Quick</h2>
        <h1>Our Services</h1>
        <p>Learn about the skillset we possess and the range of work we aim to provide</p>

        <div>
          <button>
            <router-link to="contact">CONTACT US</router-link>
          </button>
        </div>
      </div>
      <div class="form-container" ref="chat">
        <div class="card">
          <h1>CONTACT US</h1>
          <input placeholder="Name" />
          <input placeholder="Email" />
          <input placeholder="Phone" />
          <textarea placeholder="Message" />
          <button>SUBMIT</button>
        </div>
      </div>
    </div>
    <div class="skew">
      <div class="body" ref="body">
      <div class="row">
        <div>
          <h2>High performing, secure</h2>
          <h1>Web Development</h1>
          <p>Our developers provide web application services to our clients based off of their needs. 
            XStack offers a variety of web development services, from responsive design, custom landing pages,
            user experience / interaction and solutions to business logic. The appearance, accessibility,  
            and usability of your website is more important than ever, as more and more clients make 
            decisions based off these factors. XStack provides solutions using the latest technologies 
            in an increasingly competitive market.</p>
            <h3>Some of our favorite technologies</h3>
            <ul>
              <li>HTML5 / CSS</li>
              <li>JavaScript (ES6)</li>
              <li>React.js/ Redux</li>
              <li>Vue.js</li>
              <li>Node.js / Express</li>
              <li>Ruby on Rails</li>
              <li>Postgre, MongoDB, Redis</li>
            </ul>
          <router-link to="/contact">Get started</router-link>
        </div>
        <div class="img-frame">
          <img src="@/assets/web_dev.jpg" />
        </div>
      </div>
      <div class="row">
        <div>
          <h2>Solutions for all platforms</h2>
          <h1>Mobile Development</h1>
          <p>With a wide range of platforms to choose from, XStack aims to create a 
            rich experience that will meet your user or business needs. We deliver these 
            applications with technologies like React-native, which allow for the reusability 
            of solutions and speedy delivery on your product.</p>
          <router-link to="/contact">Get started</router-link>
        </div>
        <div class="img-frame">
          <img src="@/assets/mobile_dev.jpg" />
        </div>
      </div>
      <div class="row">
        <div>
          <h2>Helping your company advance</h2>
          <h1>Software Consulting</h1>
          <p>Our developers are ready to help you find solutions tailored 
            to the needs of your business. Let us guide you as you transform 
            your product into a digital strategy in today's competitive marketplace.
          </p>
          <p>Helping you build personalized experiences is what we do. XStack can help 
            you in the following ways:
          </p>
          <ul>
            <li>Consultation</li>
            <li>Implementation</li>
            <li>Customization</li>
            <li>Automation</li>
            <li>Development</li>
            <li>Training</li>
            <li>Creation</li>
            <li>Maintainance</li>
          </ul>
          <router-link to="/contact">Get started</router-link>
        </div>
        <div class="img-frame">
          <img src="@/assets/consulting.jpg" />
        </div>
      </div>
      <div class="row">
        <div>
          <h2>Let us handle the logic</h2>
          <h1>Business Automation</h1>
          <p>XStack can help the amount of time you spend on 
            handling big data and repetitive tasks through automation. 
            Be it handling data on your clients, business or application, 
            we aim help you find better ways to increase the productivity 
            of your company.</p>
          <router-link to="/contact">Get started</router-link>
        </div>
        <div class="img-frame">
          <img src="@/assets/business_automation.jpg" alt="">
        </div>
      </div>
    </div>
    </div>
  </div>
</template>

<script>
export default {

}
</script>

<style scoped>
.form-container {
  flex: 1;
  display: flex;
  justify-content: flex-end;
  align-self: stretch;
  max-width: 1000px;
}
.form-container .card {
  border-top: 10px solid rgb(42, 55, 88);
  text-align: center;
  padding: 1em;
  display: flex;
  flex-direction: column;
  width: 90%;
  z-index: 10;
  box-shadow: 1px 4px 2px rgba(94, 94, 94, 0.8);
}
.form-container .card h1 {
  color: #1E2330;
}
.form-container button {
  background:#1E2330;
  color: white;
  border-radius: 5px;
  padding: .5em;
  font-size: large;

  margin-bottom: 5px;
}
input, textarea {
  border-radius: 5px;
  padding: 5px;
  height: 2em;
  border: 1px solid rgb(212, 212, 212);
  font-size: larger;
  margin-bottom: 1em;
}
textarea {
  resize: none;
  flex: 1;
}

@media screen and (max-width: 700px){
  .form-container {
    display: none;
  }
}
</style>
