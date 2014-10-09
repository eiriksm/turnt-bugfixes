test-cov:
	./node_modules/istanbul/lib/cli.js cover -- ./node_modules/mocha/bin/_mocha -R spec
	./node_modules/istanbul/lib/cli.js check-coverage --statements=100 --functions=100 --branches=100 --lines=100

test:
	npm test

.PHONY: test test-cov
