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

  <NuxtLink 
    :to="`/entry/${widget.link_id}`"
    class="flex items-center gap-2 no-underline hover:bg-gray-50 transition-colors duration-200 rounded p-1 -m-1"
  >
    <div :style="widget.color ? { filter: `url(#colorMultiply-${widget.color})` } : {}">
      <img :src="`/images/${widget.image}.png`" class="w-8 h-8 flex-shrink-0" />
    </div>
    <span 
      :class="widget.style ? widget.style.toLowerCase() : ''" 
      class="text-black"
      style="color: black !important;"
      v-html="widget.text"
    ></span>
  </NuxtLink>
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