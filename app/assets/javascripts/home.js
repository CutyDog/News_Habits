const VueCarousel  = window.VueCarousel.default;

Vue.use(VueCarousel);
 
let app = new Vue({
  el: '#app'
});

var messageSwitch = new Vue({
  el: '#messageswitch',
  data: {
    toggle: true
  },
  methods: {
    toggleBtn: function(){
      this.toggle == true ? this.toggle = false : this.toggle = true
    }
  }
})