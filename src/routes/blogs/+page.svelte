<script lang="ts">
	import BlogList from '$lib/components/blog-list.svelte';
	import type { PageProps } from './$types';

	const { data }: PageProps = $props();
	const blogs = $derived(data.blogs);
	const tags = $derived(data.tags);
</script>

<svelte:head>
	<title>Blog lists | Saroj Regmi</title>
	<meta name="title" content="Blog lists | Saroj Regmi" />
</svelte:head>

<BlogList {blogs} {tags} />
