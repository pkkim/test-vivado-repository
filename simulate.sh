#!/bin/bash

set -e

xvlog -sv memory.sv tb.sv
xelab tb
xsim work.tb -t sim.tcl > sim.log 2>&1

if grep -q "Fatal:" sim.log; then
    echo "Simulation failed with fatal error."
    exit 1
else
    echo "Simulation completed successfully."
    exit 0
fi
