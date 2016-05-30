#!/bin/sh

set -ev

cd $TRAVIS_BUILD_DIR/
xcodebuild -scheme ci -sdk iphonesimulator -destination "platform=iOS Simulator,name=iPhone 6" GCC_INSTRUMENT_PROGRAM_FLOW_ARCS=YES GCC_GENERATE_TEST_COVERAGE_FILES=YES ONLY_ACTIVE_ARCH=YES clean test | xcpretty -c
