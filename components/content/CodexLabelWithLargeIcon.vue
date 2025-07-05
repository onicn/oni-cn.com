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
    class="inline-flex flex-col items-center p-3 rounded-lg transition-all duration-200 hover:bg-gray-50 hover:-translate-y-0.5 hover:shadow-md cursor-pointer no-underline"
  >
    <div class="w-32 h-32 mb-2 flex items-center justify-center">
      <div :style="widget.color ? { filter: `url(#colorMultiply-${widget.color})` } : {}">
        <img 
          :src="`/images/${widget.image}.png`" 
          class="min-w-32 min-h-32 max-w-full max-h-full object-contain"
        />
      </div>
    </div>
    <span 
      :class="widget.style ? widget.style.toLowerCase() : ''" 
      class="text-center max-w-[140px] break-words text-black"
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