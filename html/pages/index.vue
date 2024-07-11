<script setup lang="ts">
async function fuckYou() {
    await navigateTo('/helloworld')
}
async function fuckYou2() {
    await navigateTo('/test2')
}
</script>

<template>
<button @click="fuckYou()">fuck you</button>
<button @click="fuckYou2()">fuck you2</button>
</template>
