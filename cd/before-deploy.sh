#!/usr/bin/env bash
if [ "$TRAVIS_BRANCH" = 'master' ] && [ "$TRAVIS_PULL_REQUEST" == 'false' ]; then
	openssl aes-256-cbc -K $encrypted_799e87808ef3_key -iv $encrypted_799e87808ef3_iv -in cd/codesigning.asc.enc -out cd/codesigning.asc -d
    gpgv2 --fast-import cd/codesigning.asc
fi
