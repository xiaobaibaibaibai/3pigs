<template>
  <div id="app">
    <img alt="Vue logo" src="./assets/logo.png">
    <!-- <HelloWorld msg="to helloworld messge"/> -->
    <jsComponenet />
  </div>
</template>

<script>
// import HelloWorld from './components/HelloWorld.vue'
import jsComponenet from './components/jsComponent.vue'

export default {
  name: 'App',
  components: {
    // HelloWorld,
    jsComponenet
  }
}
</script>

<style>
#app {
  /* font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px; */
}
</style>
