update:
	pnpm update --latest -r

clear-node-modules:
	find . -name "node_modules" -type d -prune -exec rm -rf '{}' +
