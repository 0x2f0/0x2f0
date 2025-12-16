<script>
	import { goto, preloadCode, preloadData } from '$app/navigation';
	import FancyName from '$lib/components/fancy-name.svelte';
	const handleMouseEnter = () => {
		preloadCode('/blogs');
		preloadData('/blogs');
	};
</script>

<svelte:head>
	<title>saroj_r | 0x2f0 Home</title>
	<meta
		name="description"
		content={'A developer who is interested in linux and vim, wants to navigate the systems space and is currently working as a fullstack dev.'}
	/>
	<meta name="keywords" content={'Linux,saroj,sarojregmi,sarojregmi200,0x2f0,0x1ff'} />
	<meta name="author" content={'Saroj Regmi'} />
	<meta property="og:title" content={'Fullstack wanna be Systems Soy Dev!'} />
</svelte:head>

<div class="flex h-screen flex-col justify-center gap-2.5 p-2.5 sm:p-20">
	<small class="text-sm text-neutral-500 sm:text-xl dark:text-gray-300"
		>Hey it's me <FancyName />
	</small>

	<section
		class="flex flex-col gap-1 text-left font-inter text-3xl text-neutral-800 sm:gap-2.5 sm:text-6xl dark:text-white"
	>
		<div>A developer for fun,</div>
		<div>designer by needs,</div>
		<!-- Should add a hover effect telling my contributions to each and every single one of these. -->
		<div>Linux and Vim user by heart.</div>
	</section>

	<button
		onclick={() => {
			goto('/blogs');
		}}
		onmouseenter={handleMouseEnter}
		class="self-end rounded-md bg-white/90 px-10 py-3 text-xl transition-transform duration-75 hover:scale-105 hover:bg-white active:scale-96"
	>
		Read blogs
	</button>
</div>
