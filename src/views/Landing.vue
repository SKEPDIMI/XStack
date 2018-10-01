<template>
  <div class="landing">
    <div class="main">
      <div class="container" ref="mainContainer">
        <h1>Freedom is the Opportunity to Succeed or Fail</h1>
        <h1>We Provide Freedom</h1>
        <p>Find out how we can help you grow your
          business and find solutions using the latest technologies</p>

        <div>
          <button>
            <a href="/contact">CONTACT US</a>
          </button>
          <button class="secondary">
            <a href="/signup">
              <i class="fas fa-chevron-right"></i> CREATE AN ACCOUNT
            </a>
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
            <h2>Tractatos ius</h2>
            <p>Lorem ipsum dolor sit amet, nonumy partiendo reprehendunt nec ad,
              duo an agam legendos salutatus, sea corpora pertinax imperdiet id.
              In malis veritus cum. In diam quaeque efficiantur ius. Erant
              oportere tractatos has eu, id eum vidit percipit.
              Commune qualisque mel ei, eos dico dicam repudiare id. Nihil
              deserunt his ea.</p>
            <h2>Salutatus</h2>
            <p>Lorem ipsum dolor sit amet, nonumy partiendo reprehendunt nec ad,
              duo an agam legendos salutatus, sea corpora pertinax imperdiet id.
              In malis veritus cum. In diam quaeque efficiantur ius. Erant
              oportere tractatos has eu, id eum vidit percipit.
              Commune qualisque mel ei, eos dico dicam repudiare id. Nihil
              deserunt his ea duo an agam legendos salutatus, sea corpora pertinax
              imperdiet id.</p>
            <a href="/about">learn more</a>
          </div>
        </div>
        <div class="row">
          <div>
            <h2>Why XStack?</h2>
            <h1>We Aim to Provide Solutions Using Our Wide Skillset</h1>
          </div>
          <div>
            <h2>Focused on results</h2>
            <p>Lorem ipsum dolor sit amet, nonumy partiendo reprehendunt nec ad,
              duo an agam legendos salutatus, sea corpora pertinax imperdiet id.
              In malis veritus cum. In diam quaeque efficiantur ius. Erant
              oportere tractatos has eu, id eum vidit percipit.
              Commune qualisque mel ei, eos dico dicam repudiare id. Nihil
              deserunt his ea duo an agam legendos salutatus, sea corpora pertinax
              imperdiet id.</p>

            <h2>Tractatos ius</h2>
            <p>Lorem ipsum dolor sit amet, nonumy partiendo reprehendunt nec ad,
              duo an agam legendos salutatus, sea corpora pertinax imperdiet id.
              In malis veritus cum. In diam quaeque efficiantur ius. Erant
              oportere tractatos has eu, id eum vidit percipit.
              Commune qualisque mel ei, eos dico dicam repudiare id. Nihil
              deserunt his ea.</p>
            <a href="/about">learn more</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
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

    // create a scene
    new this.$scrollmagic.Scene({
      reverse: true,
      triggerElement: body,
      triggerHook: 'onCenter',
    })
      .setTween(this.$gsap.TweenMax.fromTo(body, 1, { x: 200, opacity: 0 }, { x: 0, opacity: 1 }))
      .setClassToggle('#main-header', 'active')
      .addTo(controller); // assign the scene to the controller
  },
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
.landing {
  overflow: hidden;
  color: white;
  background: linear-gradient(to right, #101525 0%,#1e2638 50%,#101525 100%);
}
.main {
  margin-top: 5em;
  min-height: 75vh;
  display: flex;
  align-items: center;
  padding: 0 2em;
}
.container {
  text-align: left;
  max-width: 45%;
}
.container p {
  color: #656975;
  font-size: 1.6em;
}
.container h1 {
  letter-spacing: 1px;
  font-weight: normal;
  margin: 4px 0;
  font-size: 2em;
}
.container button {
  padding: 1.3em 1.75em;
  border-radius: .5em;
  font-weight: 600;
  background: white;
}
.container button.secondary {
  background-color: transparent;
  border: 0 solid transparent;
}
.container button a {
  color: #1E2330;
  text-decoration: none;
  transition: .2s all ease-in-out;
}
.container button.secondary a {
  color: white;
}
.container button a:hover {
  color: #656975;
}
.device-container {
  display: flex;
  align-items: center;
  justify-content: center;
  margin-bottom: -30vh;
  z-index: 10;
}
.skew {
  transform:skew(0deg,-5deg);
  background-color: white;
  padding:5em 0;
}
.body {
  transform:skew(0deg,5deg);
  background-color: white;
  width: 100%;
  color: #616e82;
  z-index: 10;
  min-height: 100vh;
  padding: 20vh 2em;
  text-align: left;
}

.body h1 {
  color: #1E2330;
}
.row {
  display: flex;
  flex-wrap: wrap;
  flex-direction: row;
  margin-bottom: 1rem;
}
.row > div {
  flex: 1;
}
.row > div:nth-child(1) {
  margin-right: 1rem;
}
.row > div:nth-child(2) {
  margin-left: 1rem;
}
.row a {
  margin-top: 1em;
  text-decoration: none;
  color:rgb(25, 73, 194);
  transition: .2s all ease-in-out;
}
.row a:hover {
  color: #1E2330;
  text-decoration: underline;
}
@media screen and (max-width: 700px) {
  .main .container {
    max-width: 100%;
  }
  .device-container {
    flex: 0;
  }
}
</style>
