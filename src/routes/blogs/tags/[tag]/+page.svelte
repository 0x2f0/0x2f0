<script lang="ts">
	import { page } from '$app/state';
	import BlogList from '$lib/components/blog-list.svelte';
	import type { LayoutData } from '../../$types';

	const tag = $derived(page.params.tag as string);
	const { tags: all_tags, blogs: all_blogs } = $derived(page.data as LayoutData);

	const getTags = $derived(() => {
		const tags = new Set(all_tags);
		tags.delete(tag);
		tags.add('clear');

		return tags;
	});

	const tags = $derived(getTags());
	const blogs = $derived(tag ? all_blogs.filter((b) => b.metadata.tag?.includes(tag)) : all_blogs);
</script>

<BlogList {tags} {blogs} {tag} />
