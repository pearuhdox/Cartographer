data modify storage cartographer_charon:player inv set value []
function suso.rng:seed
function cartographer_charon:inv/calculate_max_interval
function cartographer_charon:inv/choose_rand_interval
function cartographer_charon:inv/create_bundle
function cartographer_charon:inv/rec

execute if data storage cartographer_charon:bundle bundle.tag.Items[] run function cartographer_charon:inv/commit_drop