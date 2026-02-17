import { z, defineCollection } from "astro:content";
import { glob } from "astro/loaders";

const projectsCollection = defineCollection({
  loader: glob({ pattern: "**/[^_]*.{md,mdx}", base: "./src/content/projects" }),
  schema: z.object({
    title: z.string(),
    description: z.string(),
    image: z.object({
      url: z.string(),
      alt: z.string(),
    }),
    worksImage1: z.object({
      url: z.string(),
      alt: z.string(),
    }),
    worksImage2: z.object({
      url: z.string(),
      alt: z.string(),
    }),
    worksImage3: z
      .object({
        url: z.string(),
        alt: z.string(),
      })
      .optional(),
    platform: z.string(),
    stack: z.string(),
    website: z.string().optional(),
    github: z.string().optional(),
    fdroid: z.string().optional(),
    download: z.string().optional(),
  }),
});

export const collections = {
  projects: projectsCollection,
};
