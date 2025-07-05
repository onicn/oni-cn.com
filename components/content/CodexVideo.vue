<template>
  <div class="bg-gray-100 border-2 border-dashed border-gray-300 rounded-lg p-8 text-center">
    <div class="text-gray-500 text-lg mb-2">
      <svg class="w-16 h-16 mx-auto mb-4" fill="currentColor" viewBox="0 0 20 20">
        <path d="M2 6a2 2 0 012-2h6l2 2h6a2 2 0 012 2v6a2 2 0 01-2 2H4a2 2 0 01-2-2V6zM8.5 13.5L13 10L8.5 6.5v7z" />
      </svg>
    </div>
    <p class="text-gray-600 font-medium">视频内容</p>
    <p class="text-gray-500 text-sm mt-1">为了节省带宽，没有放出来，大家去游戏里看吧</p>
  </div>
</template>

<script setup>
defineProps({
  widget: {
    type: Object,
    required: true,
  },
});
</script>