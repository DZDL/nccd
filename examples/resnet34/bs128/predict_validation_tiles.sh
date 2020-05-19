#!/bin/bash

source env_vars.sh

python predict_tiles.py \
    --data_path $DATADIR/aisi2019/nuclear_canister_data \
    --test_dirname validation \
    --model_path $OUTDIR/nccd/examples/$RESNETNAME/$BSNAME/model \
    --model $RESNETNAME \
    --batch_size $BSVALUE \
    --ps 0.1 \
    --output_path $OUTDIR/nccd/examples/$RESNETNAME/$BSNAME \
    --output_filename validation_tile_preds.csv \
    --verbose
