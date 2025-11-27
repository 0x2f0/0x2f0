import type { TBlogFrontMatter } from '$lib/types';
import { basename } from 'path';
import type { PageServerLoad } from './$types';

type TBlog = {
	fileName: string;
	slug: string;
	metadata: TBlogFrontMatter;
};

export const load: PageServerLoad = async ({ url: { searchParams } }) => {
	const globResponse = import.meta.glob('./**/*.svx') ?? {};
	const blogs: TBlog[] = [];
	const tags: Set<string> = new Set();

	for (let [blogFileName, fileModule] of Object.entries(globResponse)) {
		const metadata = ((await fileModule()) as any).metadata as TBlogFrontMatter;

		if (import.meta.env.PROD)
			if (metadata.status === 'draft' || metadata?.status === undefined) continue;

		blogs.push({
			fileName: blogFileName,
			slug: `/blogs/${basename(blogFileName.replace('\/+page.svx', ''))}`,
			metadata
		});

		if (!metadata.tag) continue;

		if (Array.isArray(metadata.tag)) {
			metadata.tag?.forEach((tag) => {
				tags.add(tag);
			});
			continue;
		}

		if (typeof metadata.tag === 'string') tags.add(metadata.tag);
	}

	blogs.sort((a, b) => {
		try {
			const dateA = new Date(a.metadata.date);
			const dateB = new Date(b.metadata.date);

			if (dateA < dateB) return -1;
			if (dateA > dateB) return 1;

			return 0;
		} catch {
			return 0;
		}
	});

	const filterTag = searchParams.get('tag');
	tags.delete('clear');

	if (!filterTag) return { blogs, tags };

	return {
		blogs: blogs.filter((blog) => blog.metadata.tag?.includes(filterTag.toLowerCase().trim())),
		tags: tags.add('clear')
	};
};

export const prerender = false;
