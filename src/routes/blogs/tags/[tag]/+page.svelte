<script lang="ts">
	import BlogList from '$lib/components/blog-list.svelte';
	import type { PageProps } from './$types';
	const { data } = $props() as PageProps;
	const { blogs, tag, tags } = $derived(data);
</script>

<svelte:head>
	<title>saroj_r | 0x2f0 Home</title>
	<meta name="description" content={`Saroj Regmi blogs related to ${tag}`} />
	<meta name="keywords" content={`${tag}`} />
	<meta name="author" content={'Saroj Regmi'} />
	<meta property="og:title" content={`Blogs by Saroj Regmi, ${tag}`} />
</svelte:head>

<BlogList {tags} {blogs} {tag} />
