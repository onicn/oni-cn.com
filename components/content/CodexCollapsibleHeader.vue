<template>
  <p 
    :class="[
      widget.style ? widget.style.toLowerCase() : '',
      {
        'text-2xl font-bold': widget.style?.toLowerCase() === 'title',
        'text-lg font-bold': widget.style?.toLowerCase() === 'subtitle',
        'text-base': widget.style?.toLowerCase() === 'body'
      }
    ]" 
    v-html="widget.text"
  ></p>
</template>

<script setup>
defineProps({
  widget: {
    type: Object,
    required: true,
  },
});
</script>