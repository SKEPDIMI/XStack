<template>
  <div class="landing">
    <div class="main">
      <div class="container" ref="mainContainer">
        <h1>Freedom is the Opportunity to Succeed or Fail</h1>
        <h1>We Provide Freedom</h1>
        <p>Find out how we can help you grow your
          business and find solutions using the latest technologies</p>

        <div id="buttons">
          <button>
            <router-link to="contact">CONTACT US</router-link>
          </button>
          <button class="secondary">
            <router-link to="signup">
              <i class="fas fa-chevron-right"></i> CREATE AN ACCOUNT
            </router-link>
          </button>
        </div>
      </div>
      <div class="device-container" ref="device">
        <Device/>
      </div>
    </div>

    <div class="skew">
      <div class="body" ref="body">
        <div class="row">
          <div>
            <h2>How we can help your business</h2>
            <h1>We Are a Full-Service Software Development and Solutions Agency</h1>
          </div>
          <div>
            <h2>Software development</h2>
            <p>
              XStack is a team of developers and designers providing solutions using the 
              latest technologies and best practices. We are highly flexible, focused on 
              the success of the company, and willing to go the extra mile to achieve this.
            </p>
            <h2>Our Skills</h2>
            <p>
              We work on the latest tools and technologies used to build modern applications, and 
              don't limit ourselves to a single stack or framework. Our favorite tools include
              technologies like HTML/CSS, ES6, React/Redux/Native, Vue.js, Node.js, socket.io, MongoDB, Ruby on Rails, 
              AWS, Git and Heroku. Here at XStack we are constantly challenging ourselves and finding new ways 
              to improve our skills, which is why we aim to expand these skills and continue 
              to provide clients with the results they need.
            </p>
            <router-link to="/services">learn more</router-link>
          </div>
        </div>
        <div class="row">
          <div>
            <h2>Why XStack?</h2>
            <h1>Your Success is Our Success, and We Are Not Satisfied Until You Are</h1>
          </div>
          <div>
            <h2>Personal Service is the Name of the Game</h2>
            <p>
              Here at XStack, we are not satisfied until our client's success is 
              met. We like to differentiate ourselves by making the your company's 
              success our own success. We provide you with a team to help you solve 
              problems which they are eager to learn from, and we are not satisfied
              until you are.
            </p>

            <h2>XStack is Built on Growth</h2>
            <p>
              XStack was created in order to help its members grow their professional 
              experience and skills while helping companies solve real problems. Therefore 
              we aim for personal, financial and professional growth by tapping into our 
              potential.
            </p>
            <router-link to="about">learn more</router-link>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import '@/assets/stylesheets/common.css';
import Device from '../components/Device';

export default {
  name: 'Landing',
  components: {
    Device,
  },
  mounted() {
    const {
      mainContainer,
      device,
      body,
    } = this.$refs;

    const timeline = new this.$gsap.TimelineMax();
    const controller = new this.$scrollmagic.Controller();

    timeline
      .fromTo(mainContainer, 1.75, { x: -200, opacity: 1 }, { x: 0, opacity: 1 })
      .fromTo(device, 0.8, { x: 200, opacity: 0 }, { x: 0, opacity: 1 });
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style>
.landing #buttons {
  width: 100%;
}

@media screen and (max-width: 450px) {
  .landing #buttons {
    display: flex;
    flex-direction: column;
    align-items: flex-start;
  }
  .landing #buttons button.secondary {
    padding: 15px 0 0 0;
  }
}
</style>
