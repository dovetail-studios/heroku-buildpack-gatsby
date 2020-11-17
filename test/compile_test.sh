#!/bin/sh

. ${BUILDPACK_TEST_RUNNER_HOME}/lib/test_utils.sh

testCompile()
{
  # set arbitrary env vars
  echo "foo" > $ENV_DIR/FOO

  capture ${BUILDPACK_HOME}/bin/compile ${BUILD_DIR} ${CACHE_DIR} ${ENV_DIR}
  assertCaptured "Done"
}
