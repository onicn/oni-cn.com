import { defineContentConfig, defineCollection, z } from '@nuxt/content'

export default defineContentConfig({
    collections: {
        categories: defineCollection({
            type: 'data',
            source: 'category.yaml',
            schema: z.object({
                body: z.array(
                    z.object({
                        id: z.string(),
                        name: z.string(),
                        sub_categories: z.array(z.string()).optional()
                    })
                )
            })
        }),
        entry: defineCollection({
            type: 'data',
            source: 'entry/**.yaml',
            schema: z.object({
                id: z.string(),
                name: z.string(),
                content_container: z.array(
                    z.object({
                        contents: z.array(
                            z.object({
                                widget_type: z.string(),
                                text: z.string().optional(),
                                text2: z.string().optional(),
                                style: z.string().optional(),
                                color: z.string().optional(),
                                image: z.string().optional(),
                            }).passthrough()
                        ),
                        layout: z.string()
                    })
                ).optional()
            }).passthrough()
        }),
    }
})