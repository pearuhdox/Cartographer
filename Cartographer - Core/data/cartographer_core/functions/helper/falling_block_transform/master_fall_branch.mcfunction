execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_1 run function cartographer_core:helper/falling_block_transform/scan_branch_1
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_2 run function cartographer_core:helper/falling_block_transform/scan_branch_2
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_3 run function cartographer_core:helper/falling_block_transform/scan_branch_3
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_4 run function cartographer_core:helper/falling_block_transform/scan_branch_4
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_5 run function cartographer_core:helper/falling_block_transform/scan_branch_5
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_6 run function cartographer_core:helper/falling_block_transform/scan_branch_6
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_7 run function cartographer_core:helper/falling_block_transform/scan_branch_7
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_8 run function cartographer_core:helper/falling_block_transform/scan_branch_8
execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_9 run function cartographer_core:helper/falling_block_transform/scan_branch_9
#execute if block ~ ~ ~ #cartographer_core:block_scan/tag_branch_10 run function cartographer_core:helper/falling_block_transform/scan_branch_10

#execute align xyz run summon falling_block ~0.5 ~ ~0.5 {BlockState:{Name:"minecraft:stone"},Silent:1b,Time:1,DropItem:0b}
setblock ~ ~ ~ air replace