<template>
  <div class="wrapper">
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
import '../assets/common.css';
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
<style>

</style>
