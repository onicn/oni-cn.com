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
      <filter 
        v-if="widget.color"
        :id="`colorMultiply-${widget.color}`"
      >
        <feColorMatrix 
          type="matrix" 
          :values="getColorMatrix(widget.color)"
        />
      </filter>
    </defs>
  </svg>

  <div class="bg-gray-50 border border-gray-200 rounded-lg p-4 max-w-2xl">
    <div class="flex items-center justify-between">
      <!-- Required Items -->
      <div class="flex gap-2 flex-1">
        <NuxtLink
          v-for="(item, index) in widget.require" 
          :key="`required-${index}`"
          :to="`/entry/${item.link_id}`"
          :title="item.tooltip"
          class="flex flex-col items-center p-2 bg-white rounded-lg shadow-sm border hover:bg-gray-50 transition-colors duration-200 no-underline flex-1"
        >
          <img 
            :src="`/images/${item.image}.png`" 
            class="w-12 h-12 object-contain mb-1" 
            :alt="item.text1"
            :style="item.color ? { filter: `url(#colorMultiply-${item.color})` } : {}"
          />
          <span class="text-xs text-center text-gray-700" v-html="item.text1"></span>
          <span v-if="item.text2" class="text-xs text-gray-500" v-html="item.text2"></span>
        </NuxtLink>
      </div>
      
      <!-- Arrow -->
      <div class="flex items-center mx-4">
        <svg class="w-6 h-6 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
        </svg>
      </div>
      
      <!-- Produced Item -->
      <div class="flex-1 flex justify-center">
        <div
          :title="widget.text"
          class="flex flex-col items-center justify-center p-2 bg-white rounded-lg shadow-sm border w-full"
        >
          <img 
            :src="`/images/${widget.image}.png`" 
            class="w-12 h-12 object-contain mb-1" 
            :alt="widget.text"
            :style="widget.color ? { filter: `url(#colorMultiply-${widget.color})` } : {}"
          />
          <span class="text-xs text-center text-gray-700" v-html="widget.text"></span>
          <span v-if="widget.tooltip" class="text-xs text-center text-gray-500" v-html="widget.tooltip"></span>
        </div>
      </div>
    </div>
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