import { domain } from '$lib/constants';
import type { TBlog } from '../../routes/blogs/+layout.server';

const replaceRef = {
	'{{blog_list}}': (blogs: TBlog[]) => {
		return blogs.reduce(
			(p, c) =>
				`[${c.metadata.title.trim().replaceAll('[', '(').replaceAll(']', ')')}](${domain}${c.slug})\n${p}`,
			''
		);
	}
};

export class genReadMe {
	private template = Bun.file('README.template.md');
	private readMe = Bun.file('README.md');

	private templateText = this.template.text();
	public async writeBlogs(blogs: TBlog[]) {
		try {
			let templateText = await this.templateText;

			Object.entries(replaceRef).map(([key, fn]) => {
				const updatedData = fn(blogs);
				templateText = templateText.replaceAll(key, updatedData);
			});

			return await this.readMe.write(templateText);
		} catch (e) {
			console.log('Something went wrong while writing blogs to readme');
		}
	}
}
