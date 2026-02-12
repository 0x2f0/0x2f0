<!--
It is nothing but a fancy anchor element with default 
style and a default link to blog with that tag on. 
-->

<script lang="ts">
	export let to: string = '';
	let href = `/blogs/tags/${to}`;

	if (to === 'clear') href = '/blogs';
</script>

<a {href}>#<slot /></a>
