import { domain } from '$lib/constants';
import type { TBlog } from '../../routes/blogs/+layout.server';

const replaceRef = {
	'{{blog_list}}': (blogs: TBlog[]) => {
		return blogs.reduce(
			(p, c, i) =>
				`${p}- [${c.metadata.title.trim().replaceAll('[', '(').replaceAll(']', ')')}](${domain}${c.slug})${i !== blogs.length - 1 ? '\n' : ''}`,
			''
		);
	}
};

export class genReadMe {
	private template = Bun.file('README.template.md');
	private readMe = Bun.file('README.md');

	private templateText = this.template.text();
	public async writeBlogs(blogs: TBlog[]) {
		console.log('\n\n[log]: Writing blogs to readme');

		try {
			let templateText = await this.templateText;

			Object.entries(replaceRef).map(([key, fn]) => {
				const updatedData = fn(blogs);
				console.log('[log]: Parsing blog contents to write!!');

				templateText = templateText.replaceAll(key, updatedData);
			});

			await this.readMe.write(templateText);
			console.log('[log]: Blogs Written Successfully.');
		} catch (e) {
			console.log('Something went wrong while writing blogs to readme');
		}
	}
}
