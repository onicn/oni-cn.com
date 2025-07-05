<template>
  <!-- SVG Filters for color multiplication -->
  <svg style="position: absolute; width: 0; height: 0;">
    <defs>
      <filter 
        v-for="item in [...(widget.require || []), ...(widget.produce || [])].filter(item => item && item.color)" 
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

  <div class="bg-gray-50 border border-gray-200 rounded-lg p-4 max-w-2xl">
    <h3 v-if="widget.text" class="text-lg font-semibold mb-4 text-gray-800" v-html="widget.text"></h3>
    
    <div class="flex items-center justify-between">
      <!-- Required Items -->
      <div class="flex gap-2 justify-end flex-1">
        <NuxtLink
          v-for="(item, index) in widget.require" 
          :key="`required-${index}`"
          :to="`/entry/${item.link_id}`"
          :title="item.tooltip"
          class="flex flex-col items-center p-2 bg-white rounded-lg shadow-sm border hover:bg-gray-50 transition-colors duration-200 no-underline"
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
      
      <!-- Temperature Condition -->
      <div class="flex flex-col items-center">
        <div 
          :class="widget.fabricator.image === 'crew_state_temp_up' ? 
            'flex flex-col items-center justify-center p-2 bg-red-50 rounded-lg shadow-sm border-2 border-red-200 w-20 h-20' : 
            'flex flex-col items-center justify-center p-2 bg-blue-50 rounded-lg shadow-sm border-2 border-blue-200 w-20 h-20'"
          :title="widget.fabricator.tooltip"
        >
          <img 
            :src="`/images/${widget.fabricator.image}.png`" 
            class="w-8 h-8 object-contain mb-1" 
            :alt="widget.fabricator.text1"
          />
          <span 
            :class="widget.fabricator.image === 'crew_state_temp_up' ? 
              'text-xs font-semibold text-red-800 text-center' : 
              'text-xs font-semibold text-blue-800 text-center'" 
            v-html="widget.fabricator.text1"
          ></span>
        </div>
      </div>
      
      <!-- Arrow -->
      <div class="flex items-center mx-4">
        <svg class="w-6 h-6 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24">
          <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M9 5l7 7-7 7"></path>
        </svg>
      </div>
      
      <!-- Produced Items -->
      <div class="flex gap-2 justify-start flex-1">
        <NuxtLink
          v-for="(item, index) in widget.produce" 
          :key="`produced-${index}`"
          :to="`/entry/${item.link_id}`"
          :title="item.tooltip"
          class="flex flex-col items-center p-2 bg-white rounded-lg shadow-sm border hover:bg-gray-50 transition-colors duration-200 no-underline"
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