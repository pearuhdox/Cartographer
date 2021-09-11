#Setup all necessary helper scoreboards

scoreboard objectives add helper_open_trap minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add mimic_health dummy
scoreboard objectives add helper_power armor

scoreboard objectives add setup dummy

bossbar remove cartographer:mimic
bossbar add cartographer:mimic {"text":"Mimic","color":"red","bold":true}
bossbar set cartographer:mimic color red
bossbar set cartographer:mimic style notched_6
bossbar set cartographer:mimic max 120

#Setup LoE data space
function cartographer_mimics:load/integration/active/clear

#Run loops
function cartographer_mimics:loop/tick/base
function cartographer_mimics:loop/6_second/base