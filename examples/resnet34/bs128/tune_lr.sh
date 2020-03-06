#!/bin/bash

python tune_lr.py \
    --data_path $HOME/opt/data/aisi2019/nuclear_canister_data \
    --model resnet34 \
    --batch_size 128 \
    --ps 0.1 \
    --end_lr 0.5 \
    --num_lr_iters 200 \
    --output_path $HOME/opt/output/nccd/examples/resnet34/bs128 \
    --output_filename tuning_lrs_and_losses.csv \
    --verbose
