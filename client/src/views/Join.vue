<template>
  <div class="team-join">
    <div class="top-bar" v-bind:style="{ backgroundImage: 'url(' + require('@/assets/team/join.jpg') + ')' }">
      <img src="@/assets/logo/2.png" alt="icon">
    </div>

    <div class="row">
      <div class="content" ref="content">
        <h2>A Growing Team Looking to Make Positive Changes in the Industry</h2>
        <h1>Be part of a team looking to put their ideas into action</h1>
        <p>
          <strong>XStack is a team of developers, designers and experts looking to grow and build projects together while helping real clients solve real problems.</strong>
          Our main motivation is to assist skilled individuals gain professional experience by providing them a team to learn 
          from and grow together, while providing solutions to valuable companies. <strong>If this sounds like your type of environment, we feel you might be right for 
          the team!</strong>
        </p>
        <h2>What Will I Do at the Company?</h2>
        <h1>Your Roles and Opportunities at XStack</h1>
        <p>
          Something we want all to have very clear right now is that <strong>at XStack, you are not a developer, designer, consultant, etc.
          You are an integral part of the team, having the ability to make major contributions from the start</strong>. At XStack, we  
          believe that everyone has great amounts of untapped potential they are yet to fully discover. This is why we want 
          to provide our team with potential to shape XStack in order to accomplish more. How exactly do we achieve this?
        </p>
        <h3>How You Will Make Major Contributions to the Company:</h3>
        <strong>- Out-of-the-box thinking</strong>
        <p>
          We encourage you to think outside of the box always. Every idea is integral to achieve success, and is important 
          for our collective growth
        </p>
        <strong>- We let you make desicions</strong>
        <p>We want you to make desicions about the company could push it forward, and advance our abilities collectively</p>
        <strong>- Public blog </strong>
        <p>
          We provide a way for you to share your ideas with the rest of the web, so we can find new ways of fixing problems, 
          and you gain exposure from other clients.
        </p>
        <strong>- Change the way we look</strong>
        <p>
          We are constantly looking for ways to change the way we project ourselves to the world, be it from design, presentation 
          or ideas we value, we constantly look for ways to change how the world sees us.
        </p>
        <router-link :to="'/about'">Learn about our values and vision</router-link>

        <h2>What are the Benefits?</h2>
        <h1>Benefits XStack provides</h1>
        <h3>- Location independence</h3>
        <h3>- Flexible hours</h3>
        <h3>- Learning and growth</h3>
      </div>
      <div class="side">
        <button class="join-button" ref="joinButton">JOIN THE TEAM</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Join',
  mounted() {
    let {
      joinButton,
      content
    } = this.$refs;
    const controller = new this.$scrollmagic.Controller();

    new this.$scrollmagic.Scene({
      triggerElement: joinButton, 
      triggerHook: 0.05,
      duration: (content.offsetHeight - 20)
    })
    .setPin(joinButton)
    .addTo(controller)
  },
}
</script>

<style>
.team-join {
  background: white;
}
.top-bar {
  background-position: center center;
  background-size: cover;
  background-attachment: fixed;
  width: 100%;
  height: 30vh;
  display: flex;
  justify-content: center;
  align-items: center;
  font-size: large;
}
.top-bar img {
  height: 2em;
}
header.alt {
  background-color: white !important;
}
header.alt a:hover {
  color: lightblue !important;
}
header.alt a.active {
  color: black !important;
}
header.alt .toggle .bar {
  background-color: black !important;
}
header.alt .button {
  background-color: lightblue !important;
}
header.alt .button:hover {
  background-color: lightsteelblue !important;
  color: white !important;
}
.team-join .content {
  width: 100%;
  padding: 20px;
  text-align: left;
  max-width: 800px;
  flex: 2;
}
.team-join .content h2 {
  color: grey;
}
.team-join p {
  font-size: 1.1em;
}
.team-join .side {
  padding: 20px;
  display: flex;
  justify-content: flex-end;
  align-items: flex-start;
  flex: 1;
}
.team-join .join-button {
  background-color: lightblue;
  padding: 15px 25px;
  color: white;
  border-radius: 5px;
  font-size: large;
  border: none;
  position: relative;
  top: 0;
  left: 0;
  bottom: auto;
  right: auto;
  margin: auto;
}
</style>
