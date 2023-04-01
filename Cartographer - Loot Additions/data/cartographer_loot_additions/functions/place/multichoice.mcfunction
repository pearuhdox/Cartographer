execute align xyz positioned ~0.5 ~0.5 ~0.5 run setblock ~ ~ ~ lodestone replace
execute align xyz positioned ~0.5 ~1.5 ~0.5 run setblock ~ ~ ~ mangrove_button[face=floor] replace

execute align xyz positioned ~0.5 ~ ~-0.5 run summon item_frame ~ ~ ~ {Facing:2b,Tags:["ca.multichoice_frame_setup"]} 
execute align xyz positioned ~0.5 ~ ~1.5 run summon item_frame ~ ~ ~ {Facing:3b,Tags:["ca.multichoice_frame_setup"]} 

execute align xyz positioned ~-0.5 ~ ~0.5 run summon item_frame ~ ~ ~ {Facing:4b,Tags:["ca.multichoice_frame_setup"]} 
execute align xyz positioned ~1.5 ~ ~0.5 run summon item_frame ~ ~ ~ {Facing:5b,Tags:["ca.multichoice_frame_setup"]} 

execute align xyz positioned ~0.5 ~0.5 ~0.5 run summon marker ~ ~ ~ {Tags:["ca.multichoice_marker"]} 

execute as @e[type=item_frame,tag=ca.multichoice_frame_setup,sort=nearest,limit=4] run function cartographer_loot_additions:place/create_multichoice_frame

kill @s