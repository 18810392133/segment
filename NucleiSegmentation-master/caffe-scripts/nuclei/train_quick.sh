#!/usr/bin/env sh

TOOLS=/home/hp/caffe/build/tools

$TOOLS/caffe train \
  --solver=/home/hp/weijunlin/NucleiSegmentation-master_original/caffe-scripts/nuclei/nuclei_quick_solver.prototxt \
  --snapshot=/home/hp/weijunlin/NucleiSegmentation-master_original/caffe-scripts/nuclei/weijunlin_nuclei_quick_relative_iter_60000.solverstate 2>&1 | tee weijunlin_nuclei_8_run_output.txt

# reduce learning rate by factor of 10 after 8 epochs
# $TOOLS/caffe train \
  # --solver=examples/cifar10/cifar10_quick_solver_lr1.prototxt \
  # --snapshot=examples/cifar10/cifar10_quick_iter_4000.solverstate.h5
