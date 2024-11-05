#!/bin/bash
set -e

cd /engine_src/engine
scons profile="../misc/build_profiles/production_linux.py"
