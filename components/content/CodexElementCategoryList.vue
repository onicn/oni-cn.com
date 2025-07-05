<template>
  <!-- SVG Filters for color multiplication -->
  <svg style="position: absolute; width: 0; height: 0;">
    <defs>
      <filter 
        v-for="item in (widget.require || []).filter(item => item && item.color)" 
        :key="item.color"
        :id="`colorMultiply-${item.color}`"
      >
        <feColorMatrix 
          type="matrix" 
          :values="getColorMatrix(item.color)"
        />
      </filter>
    </defs>
  </svg>

  <div class="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 xl:grid-cols-8 gap-2">
    <NuxtLink
      v-for="(item, index) in widget.require" 
      :key="index"
      :to="`/entry/${item.link}`"
      class="flex items-center gap-2 p-2 bg-white rounded border hover:bg-gray-50 transition-colors duration-200 no-underline"
    >
      <img 
        :src="`/images/${item.image}.png`" 
        class="w-6 h-6 object-contain flex-shrink-0" 
        :alt="item.text1"
        :style="item.color ? { filter: `url(#colorMultiply-${item.color})` } : {}"
      />
      <span class="text-xs text-gray-700 leading-tight flex-1" v-html="item.text1"></span>
    </NuxtLink>
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