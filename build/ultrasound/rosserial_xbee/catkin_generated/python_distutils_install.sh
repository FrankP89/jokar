#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/frank/Documents/ws_raskar/ws_raskar/src/ultrasound/rosserial_xbee"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/frank/Documents/ws_raskar/ws_raskar/install/lib/python2.7/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/frank/Documents/ws_raskar/ws_raskar/install/lib/python2.7/dist-packages:/home/frank/Documents/ws_raskar/ws_raskar/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/frank/Documents/ws_raskar/ws_raskar/build" \
    "/usr/bin/python2" \
    "/home/frank/Documents/ws_raskar/ws_raskar/src/ultrasound/rosserial_xbee/setup.py" \
    build --build-base "/home/frank/Documents/ws_raskar/ws_raskar/build/ultrasound/rosserial_xbee" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/frank/Documents/ws_raskar/ws_raskar/install" --install-scripts="/home/frank/Documents/ws_raskar/ws_raskar/install/bin"
