<template>
    <div v-if="entry">
        <ContentContainer :content="entry.meta?.body.content_container" />
    </div>
    <div v-else>
        <p>词条不存在</p>
    </div>
</template>

<script setup lang="ts">
import ContentContainer from '~/components/ContentContainer.vue'


const route = useRoute()
const slug = route.params.slug

const { data: entry } = await useAsyncData(route.path, async () => {
    // 假设你存的词条是 md 或 yaml 放在 content/entry/ 下
    return queryCollection('entry').where("stem", "=", `entry/${slug}`).first()
})

</script>

<style scoped>
.card-header {
  font-size: 18px;
  font-weight: bold;
}
</style>

