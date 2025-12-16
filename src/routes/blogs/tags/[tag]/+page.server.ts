import { redirect } from '@sveltejs/kit';
import type { PageServerLoad } from './$types';

export const load: PageServerLoad = async ({ params, parent }) => {
	const tag = params.tag;
	const layoutData = await parent();

	const { tags: all_tags, blogs: all_blogs } = layoutData;

	if (!all_tags.has(tag)) redirect(303, '/blogs');

	const tags = new Set(all_tags);
	tags.delete(tag);
	tags.add('clear');

	const blogs = all_blogs.filter((b) => b.metadata.tag?.includes(tag));

	if (blogs.length === 0) redirect(303, '/blogs');

	return {
		blogs,
		tags,
		tag
	};
};
