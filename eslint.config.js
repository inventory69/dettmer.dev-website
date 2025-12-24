import eslintPluginAstro from "eslint-plugin-astro";

export default [
  // Recommended Astro config
  ...eslintPluginAstro.configs.recommended,
  {
    rules: {
      // Add your custom rules here
      "no-unused-vars": "warn",
    },
  },
];
