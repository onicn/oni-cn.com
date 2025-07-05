<template>
  <!-- SVG Filters for color multiplication -->
  <svg style="position: absolute; width: 0; height: 0;" v-if="widget.color">
    <defs>
      <filter :id="`colorMultiply-${widget.color}`">
        <feColorMatrix 
          type="matrix" 
          :values="getColorMatrix(widget.color)"
        />
      </filter>
    </defs>
  </svg>

  <div :style="widget.color ? { filter: `url(#colorMultiply-${widget.color})` } : {}">
    <img :src="`/images/${widget.image}.png`" class="max-w-full" />
  </div>
</template>

<script setup>
import { useColorFilter } from '~/composables/useColorFilter';

defineProps({
  widget: {
    type: Object,
    required: true,
  },
});

const { getColorMatrix } = useColorFilter();
</script>