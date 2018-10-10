<template>
  <div class="container">
    <img :src="deviceName" />
  </div>
</template>

<script>
const pathToImg = (n) => {
  return './static/images/' + n + ".png"
};
const getImgUrl = () => window.innerWidth > 1200 ? pathToImg('ipad') : pathToImg('phone');

export default {
  name: 'Device',
  mounted() {
    const self = this;
    self.$nextTick(function() {
      window.onresize = function() {
        self.setDevice('set-device', getImgUrl());
      }
    });
  },
  data() {
    return {
      deviceName: getImgUrl()
    }
  },
  methods: {
    setDevice() {
      this.deviceName = getImgUrl()
    },
  },
};
</script>

<style scoped>
.container {
  display: flex;
  align-items: flex-end;
}
img {
  margin: 10vh 0 0 10vh;
  max-height: 500px;
}

@media screen and (max-width: 1200px) {
  img {
    height: 80vh;
  }
}

@media screen and (max-width: 1000px) {
  img {
    display: none;
  }
}
</style>
