<template>
  <el-container>
    <el-header>
      <div class="logo"><NuxtLink to="/"><img src="/logo.jpg" alt="ONICN Logo"></NuxtLink></div>
      <el-menu mode="horizontal" :ellipsis="false">
        <el-menu-item index="1">
          <NuxtLink to="/entry/KELP">nav 1</NuxtLink>
        </el-menu-item>
        <el-menu-item index="2">
          <NuxtLink to="/entry/DECOR">nav 2</NuxtLink>
        </el-menu-item>
      </el-menu>
    </el-header>
    <el-container>
      <el-aside width="200px">
        <el-menu>
          <el-sub-menu v-for="g in categories.body" :key="g.name" :index="g.name">
            <template #title>{{ g.name }}</template>
            <el-menu-item v-for="sub in g.sub_categories" :key="sub.slug" :index="sub.slug">
              <NuxtLink :to="`/entry/${sub.slug}`">{{ sub.name }}</NuxtLink>
            </el-menu-item>
          </el-sub-menu>
        </el-menu>
      </el-aside>
      <el-main>
        <NuxtPage />
      </el-main>
    </el-container>
  </el-container>
</template>

<script setup>

const { data: categories, pending, error } = await useAsyncData('categories', async () => {

  let mainCategoryData = { body: [] }; // Initialize with a default empty object
  try {
    const fetchedCategoriesArray = await queryCollection('categories').all();

    if (Array.isArray(fetchedCategoriesArray) && fetchedCategoriesArray.length > 0) {
      mainCategoryData = fetchedCategoriesArray[0];
    }
  } catch (e) {
    return { body: [] };
  }

  if (!mainCategoryData || typeof mainCategoryData !== 'object' || !Array.isArray(mainCategoryData.body)) {
    mainCategoryData = { body: [] };
  }

  for (const group of mainCategoryData.body) {
    if (group.sub_categories && Array.isArray(group.sub_categories)) {
      const newSubCategories = [];
      for (const slug of group.sub_categories) {
        try {
          const entry = await queryCollection('entry').where("stem", "=", `entry/${slug}`).first();

          if (entry && entry.name) {
            newSubCategories.push({ slug: slug, name: entry.name });
          } else {
            newSubCategories.push({ slug: slug, name: slug });
          }
        } catch (error) {
          newSubCategories.push({ slug: slug, name: slug });
        }
      }
      group.sub_categories = newSubCategories;
    } else {
      group.sub_categories = []; // Ensure sub_categories is an array even if initially missing or not an array
    }
  }
  return mainCategoryData; // Return the processed mainCategoryData object
}, {
  default: () => ({ body: [] }) // Provide a default empty object with a body array
});


</script>

<style scoped>
.el-header {
  display: flex;
  align-items: center;
  justify-content: flex-start;
  padding: 0;
  margin: 0;
}
.logo {
  height: 100%;
  width: 200px; /* Aligned with the aside width */
  display: flex;
  align-items: center;
  justify-content: flex-start; /* Align image to the start (left) of the container */
  overflow: hidden; /* Hide any overflow if the image is larger than the container */
}
.logo img {
  height: 100%;
  width: 100%;
  object-fit: cover; /* Ensures the image covers the entire area, potentially cropping */
}
</style>