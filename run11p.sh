#!/bin/bash
PATH=/data/andrei/cuda/bin:$PATH LD_LIBRARY_PATH=/data/andrei/cuda/lib64:$LD_LIBRARY_PATH  time python convnet.py  --data-path=/Users/andreirusu/funspace/cifar-10-py-colmajor --save-path=/Users/andreirusu/funspace/tmp/11p --test-range=6 --train-range=1-5 --layer-def=/Users/andreirusu/funspace/cuda-convnet/example-layers/layers-conv-local-11pct.cfg --layer-params=/Users/andreirusu/funspace/cuda-convnet/example-layers/layer-params-conv-local-11pct.cfg --data-provider=cifar-cropped --test-freq=20 --crop-border=4 $*

