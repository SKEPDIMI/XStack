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
      <div class="device-container" ref="device">
        <Device/>
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
  name: 'About'
}
</script>

<style>
.body {
  transform: skew(0deg, 0deg);
  background-color: transparent;
  text-align: center;
}
.card {
  text-align: left;
  background: #fff;
  border-radius: 2px;
  display: inline-block;
  min-height: 300px;
  margin: 1rem;
  padding: 1rem 2rem 1rem 1rem;
  position: relative;
}

</style>
