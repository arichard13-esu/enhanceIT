#!/bin/bash

gnome-terminal -- /bin/sh -c 'cd /home/aaron/PycharmProjects/capStone2/src/streams/; spark-submit sparkStreaming.py; exec bash'
