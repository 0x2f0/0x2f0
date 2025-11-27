<script lang="ts">
	import { browser } from '$app/environment';
	let storedName: string = '';
	if (browser) storedName = localStorage.getItem('fancy-name') ?? 'saroj';

	let currentName = $state(storedName);

	function handleClick() {
		if (currentName === 'saroj') {
			currentName = 'saroj_r';
		} else if (currentName === 'saroj_r') {
			currentName = '0x2f0';
		} else {
			currentName = 'saroj';
		}
		localStorage.setItem('fancy-name', currentName);
	}
</script>

<button
	class="cursor-pointer decoration-wavy decoration-1 outline-none hover:underline focus-visible:outline-none"
	onclick={handleClick}
>
	{currentName}
</button>
