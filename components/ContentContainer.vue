<template>
  <div class="content-container">
    <div 
      v-for="(item, index) in content" 
      :key="index" 
      :class="getLayoutClasses(item.layout)"
    >
      <div 
        v-for="(widget, i) in item.contents" 
        :key="i"
        class="mb-2.5" 
        :style="{ color: `#${widget.color}` }"
      >
        <component :is="getWidgetComponent(widget.widget_type)" :widget="widget" />
      </div>
    </div>
  </div>
</template>

<script setup>
// Import all widget components
import CodexText from './content/CodexText.vue';
import CodexTextWithTooltip from './content/CodexTextWithTooltip.vue';
import CodexDividerLine from './content/CodexDividerLine.vue';
import CodexSpacer from './content/CodexSpacer.vue';
import CodexLargeSpacer from './content/CodexLargeSpacer.vue';
import CodexImage from './content/CodexImage.vue';
import CodexVideo from './content/CodexVideo.vue';
import CodexLabelWithIcon from './content/CodexLabelWithIcon.vue';
import CodexIndentedLabelWithIcon from './content/CodexIndentedLabelWithIcon.vue';
import CodexLabelWithLargeIcon from './content/CodexLabelWithLargeIcon.vue';
import CodexCollapsibleHeader from './content/CodexCollapsibleHeader.vue';
import CodexElementCategoryList from './content/CodexElementCategoryList.vue';
import CodexRecipePanel from './content/CodexRecipePanel.vue';
import CodexConfigurableConsumerRecipePanel from './content/CodexConfigurableConsumerRecipePanel.vue';
import CodexTemperatureTransitionPanel from './content/CodexTemperatureTransitionPanel.vue';
import CodexConversionPanel from './content/CodexConversionPanel.vue';

defineProps({
  content: {
    type: Array,
    required: true,
  },
});

const getLayoutClasses = (layout) => {
  const layoutType = layout?.toLowerCase();
  
  switch (layoutType) {
    case 'vertical':
      return 'flex flex-col';
    case 'horizontal':
      return 'flex flex-row items-center';
    case 'grid':
      return 'grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-6 gap-4';
    default:
      return 'flex flex-col';
  }
};

const getWidgetComponent = (widgetType) => {
  const componentMap = {
    'CodexText': CodexText,
    'CodexTextWithTooltip': CodexTextWithTooltip,
    'CodexDividerLine': CodexDividerLine,
    'CodexSpacer': CodexSpacer,
    'CodexLargeSpacer': CodexLargeSpacer,
    'CodexImage': CodexImage,
    'CodexVideo': CodexVideo,
    'CodexLabelWithIcon': CodexLabelWithIcon,
    'CodexIndentedLabelWithIcon': CodexIndentedLabelWithIcon,
    'CodexLabelWithLargeIcon': CodexLabelWithLargeIcon,
    'CodexCollapsibleHeader': CodexCollapsibleHeader,
    'CodexElementCategoryList': CodexElementCategoryList,
    'CodexRecipePanel': CodexRecipePanel,
    'CodexConfigurableConsumerRecipePanel': CodexConfigurableConsumerRecipePanel,
    'CodexTemperatureTransitionPanel': CodexTemperatureTransitionPanel,
    'CodexConversionPanel': CodexConversionPanel,
  };

  return componentMap[widgetType] || CodexText;
};
</script>
