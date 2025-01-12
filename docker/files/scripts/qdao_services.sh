#!/bin/sh
tmux new-session -d -s qdao-node '/QRUCIAL-DAO/qdao-node/target/debug/qdao-node --dev'
tmux new-session -d -s qdao-exosysd '/QRUCIAL-DAO/exosysd/target/debug/qdao-exosysd'
tmux new-session -d -s qdao-api 'python3 /QRUCIAL-DAO/exotools/lar.py'

# Required for persistant builds. will never recompile unless these files are deleted
cp -r /opt/data/* /opt/testing
