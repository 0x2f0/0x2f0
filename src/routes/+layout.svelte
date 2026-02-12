<script lang="ts">
	let { children } = $props();
	import '../app.css';
	import '../code.css';

	import Cursor from '$lib/components/cursor.svelte';
</script>

<div>
	<Cursor />
	{@render children()}
</div>
