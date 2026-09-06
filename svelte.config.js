import { mdsvex } from "mdsvex";
import adapter from "@sveltejs/adapter-cloudflare";
import { vitePreprocess } from "@sveltejs/vite-plugin-svelte";
import mdsvexconfig from "./mdsvex.config";

/** @type {import('@sveltejs/kit').Config} */
const config = {
	extensions: [".svelte", ...(mdsvexconfig.extensions ?? [])],
	kit: {
		adapter: adapter({
			strict: false,
		}),
		prerender: {
			handleMissingId: "ignore",
		},
	},
	preprocess: [mdsvex(mdsvexconfig), vitePreprocess()],
};

export default config;
