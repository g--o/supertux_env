#!/bin/bash

BASE_DIR=$(ls -d */ 2>/dev/null)
BUILD_DIR="$BASE_DIR/build"
let NPROC=$(grep -c ^processor /proc/cpuinfo)*2

