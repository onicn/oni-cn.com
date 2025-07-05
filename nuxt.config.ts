// https://nuxt.com/docs/api/configuration/nuxt-config
import tailwindcss from "@tailwindcss/vite";

export default defineNuxtConfig({
  compatibilityDate: '2025-05-15',
  devtools: { enabled: true },
  css: ['~/assets/css/main.css'],

  vite: {
    plugins: [
      tailwindcss(),
    ],
  },
  nitro: {
    prerender: {
      crawlLinks: true,  // 自动爬 NuxtLink（如果你有链接）
    }
  },
  modules: ['@nuxt/content', '@element-plus/nuxt'],
})