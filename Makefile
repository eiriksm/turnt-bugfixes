test-cov:
	./node_modules/istanbul/lib/cli.js cover -- ./node_modules/mocha/bin/_mocha -R spec
	./node_modules/istanbul/lib/cli.js check-coverage --statements=100 --functions=100 --branches=100 --lines=100

test:
	npm test

ci:
	make test-cov
	./node_modules/browserify/bin/cmd.js test/test.js -o browser.js &&  karma start --browsers=PhantomJS karma.conf.js

.PHONY: test test-cov ci
