#!/bin/bash
PATH=/data/andrei/cuda/bin:$PATH LD_LIBRARY_PATH=/data/andrei/cuda/lib64:$LD_LIBRARY_PATH  time python convnet.py   --data-path=/Users/andreirusu/funspace/cifar-10-py-colmajor --save-path=/Users/andreirusu/funspace/tmp --test-range=5 --train-range=1-4 --layer-def=/Users/andreirusu/funspace/cuda-convnet/example-layers/layers-conv-local-13pct.cfg --layer-params=/Users/andreirusu/funspace/cuda-convnet/example-layers/layer-params-conv-local-13pct.cfg --data-provider=cifar-cropped --test-freq=13 --crop-border=4

