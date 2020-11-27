#Setup all necessary helper scoreboards

scoreboard objectives add helper_open_trap minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add mimic_health dummy
scoreboard objectives add helper_power armor

bossbar remove cartographer:mimic
bossbar add cartographer:mimic {"text":"Mimic","color":"red","bold":true}
bossbar set cartographer:mimic color red
bossbar set cartographer:mimic style notched_6
bossbar set cartographer:mimic max 120

fill 4206905 0 4206905 4206905 255 4206905 air
fill 4206906 0 4206905 4206906 255 4206905 air
kill @e[tag=mimic_loot_tracker]
summon armor_stand 4206905 0.5 4206905 {NoGravity:1b,Small:0b,Tags:["mimic_loot_tracker"]}

#Run loops
function cartographer_mimics:loop/tick/base
function cartographer_mimics:loop/6_second/base