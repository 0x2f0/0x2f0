import { mdsvex } from 'mdsvex';
import adapter from 'svelte-adapter-bun';
import { vitePreprocess } from '@sveltejs/vite-plugin-svelte';
import mdsvexconfig from './mdsvex.config.ts';

/** @type {import('@sveltejs/kit').Config} */
const config = {
	extensions: ['.svelte', ...(mdsvexconfig.extensions ?? [])],
	kit: {
		adapter: adapter({
			strict: false
		}),
		prerender: {
			handleMissingId: 'ignore'
		}
	},
	preprocess: [mdsvex(mdsvexconfig), vitePreprocess()]
};

export default config;
