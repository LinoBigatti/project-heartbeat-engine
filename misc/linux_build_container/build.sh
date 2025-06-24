#!/bin/bash
set -e

cd /engine_src/engine
scons profile="../misc/build_profiles/debug_linux.py"
