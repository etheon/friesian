#!/bin/bash

readonly OUTPUT='src/main/java/org/arbeitspferde/friesian/Build.java'
readonly INPUT="${OUTPUT}.in"

readonly BUILD_USER=$(whoami)
readonly BUILD_TIMESTAMP=$(date -u)
readonly BUILD_BRANCH=$(a=$(git symbolic-ref HEAD 2> /dev/null || echo "<UNKNOWN>") ; echo ${a#refs/heads/})
readonly BUILD_COMMIT=$(git log | head -n1 | awk '{ print $2 }')
readonly BUILD_UNAME=$(uname -a)

sed "s,@@BUILD_USER@@,${BUILD_USER},;s,@@BUILD_TIMESTAMP@@,${BUILD_TIMESTAMP},;s,@@BUILD_BRANCH@@,${BUILD_BRANCH},;s,@@BUILD_COMMIT@@,${BUILD_COMMIT},;s,@@BUILD_UNAME@@,${BUILD_UNAME}," \
  "${INPUT}" \
  > "${OUTPUT}"
