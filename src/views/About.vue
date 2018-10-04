<template>
  <div class="wrapper">
    <div class="main">
      <div class="container" ref="mainContainer">
        <h2>About XStack</h2>
        <h1>An Agency Dedicated to Personal Services</h1>
        <p>Our mission: to provide actionable products to growing businesses</p>

        <div>
          <button>
            <a href="/contribute">CONTRIBUTE</a>
          </button>
        </div>
      </div>
      <div class="chat-container" ref="chat">
        <div class="chat-bubble" v-for="m in messages" :key="m.header">
          <div class="thumbnail">
          </div>
          <div class="content">
            <div class="header">{{m.header}}</div>
            <div class="text">{{m.text}}</div>
          </div>
          <button></button>
        </div>
      </div>
    </div>
    <div class="body" ref="body">
      <div class="card">
        <h1>Our Philosophy</h1>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. 
          Nam laoreet purus pretium mauris finibus feugiat. Mauris a 
          arcu porta ante tristique efficitur non non sapien. Nulla 
          quis ipsum quis diam congue egestas. Etiam sed sodales ipsum, 
          finibus faucibus enim. Donec finibus mauris ac nunc porta mattis. 
          Pellentesque habitant morbi tristique senectus et netus et malesuada 
          fames ac turpis egestas. Donec accumsan ultricies erat nec faucibus. 
          Pellentesque habitant morbi tristique senectus et netus et malesuada 
          fames ac turpis egestas. Etiam vitae sodales sem. Sed dapibus eros 
          non erat auctor, sit amet mollis lacus elementum. Sed lobortis lacus 
          in placerat aliquam.</p>
        <div class="blockquote">
          <blockquote>
            <p>Etiam vitae sodales sem. Sed dapibus eros 
            non erat auctor, sit amet mollis lacus elementum. Sed lobortis lacus 
            in placerat aliquam. Pellentesque habitant morbi tristique senectus et 
            netus et malesuada fames ac turpis egestas.</p>
          </blockquote>
          - XStack
        </div>
      </div>
      <div class="card">
        <h1>How we Function</h1>
        <p>lacinia lectus imperdiet vitae. Interdum et malesuada fames ac 
          ante ipsum primis in faucibus. Integer porta, est vitae venenatis 
          tempor, purus erat porta lectus, quis mattis metus arcu eget lorem. 
          In nulla dolor, volutpat vitae ligula vitae, vestibulum pretium 
          lectus. Fusce et felis dolor. Duis sed fermentum sem, finibus suscipit 
          odio. In lacinia turpis ut felis scelerisque venenatis. Cras vel libero 
          ac mi blandit ornare.</p>
        <ul>
          <li>One</li>
          <li>Two</li>
          <li>Three</li>
        </ul>
        <router-link to="/services">learn more</router-link>
      </div>
    </div>
  </div>
</template>

<script>
import '../assets/common.css';

export default {
  name: 'About',
  data() {
    return {
      messages: [
        { header: 'Ray Newberry', text: 'Helped reduce the amount of time we spent administrating by automating the process for us. Great design and workflow' },
        { header: 'Bharti B.', text: 'Very versatile and speedy development. Would work with them again' },
        { header: 'Tyler Díaz', text: 'XStack is willing to take on a challenge and produce some advantage out of the scope of work no matter the situation' },
        { header: 'Mac Wilkinson', text: 'Very friendly company, very knowledgable even outside their specialization field' },
        { header: '5!', text: 'This is another test for chat bubbles animations' },
        { header: '6!', text: 'Another test for chat bubbles animations' },
        { header: '7!', text: 'This is another test for chat bubbles animations' },
        { header: '8!', text: 'Another test for chat bubbles animations' }
      ]
    }
  },
  mounted() {
    const {
      chat
    } = this.$refs

    const allMessages = Object.values(chat.children);

    let messageGroups = [];
    const chunkSize = 3;

    for (let i = 0; i < allMessages.length; i += chunkSize) {
      messageGroups.push(allMessages.slice(i, i + chunkSize));
    }

    let tl = new this.$gsap.TimelineMax({ delay: 0.5, repeat: -1 })

    messageGroups.forEach(messages => {
      tl
        .staggerFromTo(messages, 2, { y: 400, opacity: 0, display: 'none' }, { y: 40, opacity: 1, display: 'flex' }, 2)
        .staggerTo(messages, 1, { delay: 5, y: 0, opacity: 0 }, 0.5)
        .to(messages, 0, { display: 'none' })
    })
  },
}
</script>

<style scoped>
.wrapper {
  background: linear-gradient(to bottom right #1e2330 0%, #141928 100%);
}
.body {
  background-color: transparent;
  text-align: center;
}
.chat-container {
  display: flex;
  flex-direction: column;
  
  /* To make it the same height as the parent*/
  align-self: stretch;
  flex: 1;
  padding-left: 2em;
  align-items: flex-end;
}
.chat-bubble {
  border-radius: 10px;
  background-color: white;
  padding: 1.5em;
  color: #949a9f;
  margin-bottom: 3em;

  display: inline-flex;
  align-items: flex-start;
  justify-content: space-between;
  font-size: x-small;
}
.chat-bubble .thumbnail {
  border-radius: 2px;
  height: 25px;
  width: 25px;
  background: #141928;
}
.chat-bubble .content {
  flex: 1;
  text-align: left;
  margin: 0 10px;
  font-size: small;
}

.chat-bubble .content .header {
  font-weight: 600;
}
.chat-bubble .content .text {
  min-height: 40px;
  max-width: 80%;
}
.chat-bubble button {
  width: 50px;
  height: 25px;
  background-color: #949a9f;
  align-self: center;
}

@media screen and (max-width: 800px) {
  .chat-container {
    display: none;
  }
}
</style>
