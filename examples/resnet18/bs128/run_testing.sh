#!/bin/bash

scripts=(
  predict_test_tiles.sh
  count_test_image_corrosion.sh
  test_tile_metrics.sh
  predict_test_images.sh
  test_image_metrics.sh
)

for file in "${scripts[@]}"
do
    echo "Executing $file..."
    ./$file
done
