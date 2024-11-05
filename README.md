# Project Heartbeat engine monorepo

## Obtaining dependencies

Run `./get_deps.sh`

## Building

### Development build

Run

```
cd engine
scons profile="../misc/build_profiles/debug_linux.py"
```

### Linux production build

Have `docker` and `docker-compose` installed

Run:

```
cd misc/linux_build_container
docker-compose up
```

### Windows production build

(Only buildable using mingw!)

Run:

```
cd engine
scons profile="../misc/build_profiles/production_windows.py"
```