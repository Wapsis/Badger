<template>
<div class="col">
  <q-btn
    label="retour"
    icon="arrow_back"
    class="q-ml-lg q-mt-lg"
    color="green"
    @click="this.$router.push({ name: 'Main' })"
    />

  <q-btn
    label="Badger !"
    color="blue"
    @click="this.badge()"
    class="q-ml-lg q-mt-lg"
    />
</div>
</template>

<script>

import { defineComponent } from 'vue'
import { api } from 'boot/axios'

export default defineComponent({
  name: "User",
  mounted() {
  },
  methods: {
    badge () {
      console.log("badging")
      api.get('http://localhost:4000/api/users/test')
        .then(response => {
          console.log(response)
        })
        .catch(error => {
          console.log(error)
        })
    }
  }
})

</script>
