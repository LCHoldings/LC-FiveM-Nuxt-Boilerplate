<template>
  <div theme="dark" v-if="isVisible">
  <NuxtLayout>
    <NuxtPage />
  </NuxtLayout>
</div>
</template>

<script setup>

import { ref, shallowRef, onMounted, onUnmounted } from "vue";
import { useGlobalStore } from "./stores/global";

const isVisible = ref(true);
const globalStore = useGlobalStore();

const toggleShow = (Boolean) => {
  if (Boolean !== undefined) {
    isVisible.value = Boolean;
    return;
  }
};

const setPlayerID = (id) => {
  globalStore.$state.playerID = id;
};

const handlers = {
  toggleShow: (itemData) => {
    if (itemData.payload?.length > 0 && itemData.payload[0]) {
      toggleShow(itemData.payload[0]);
    } else {
      toggleShow();
    }
  },
  setPlayerID: (itemData) => {
    if (itemData.data) {
      setPlayerID(itemData.data);
    }
  },
};

const handleMessageListener = (event) => {
  const itemData = event?.data;
  if (handlers[itemData.type]) handlers[itemData.type](itemData);
};

onMounted(() => {
  window.addEventListener("message", handleMessageListener);
});

onUnmounted(() => {
  window.removeEventListener("message", handleMessageListener);
});
</script>