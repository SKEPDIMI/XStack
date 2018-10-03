<template>
  <div class="wrapper">
    <div class="main">
      <div class="container">
        <h2>Best Quality and Quick</h2>
        <h1>Our Services</h1>
        <p>Learn about the skillset we possess and the range of work we aim to provide</p>

        <div>
          <button>
            <a href="/contact">CONTACT US</a>
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
    <div class="body" ref="body">
      <div class="card">
        <h1>Web Development</h1>
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
        <router-link to="/contact">Get started</router-link>
      </div>
      <div class="card">
        <h1>Mobile Development</h1>
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
        <router-link to="/contact">Get started</router-link>
      </div>
      <div class="card">
        <h1>Software Consulting</h1>
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
        <router-link to="/contact">Get started</router-link>
      </div>
      <div class="card">
        <h1>Business Automation</h1>
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
        <router-link to="/contact">Get started</router-link>
      </div>
    </div>
  </div>
</template>

<script>
import '../assets/common.css';

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
  text-align: center;
  padding: 1em;
  display: flex;
  flex-direction: column;
  width: 90%;
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
