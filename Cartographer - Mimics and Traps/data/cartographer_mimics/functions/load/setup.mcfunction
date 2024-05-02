#Setup all necessary helper scoreboards

scoreboard objectives add helper_open_trap minecraft.custom:minecraft.trigger_trapped_chest
scoreboard objectives add mimic_health dummy
scoreboard objectives add helper_power armor

scoreboard objectives add setup dummy

scoreboard objectives add ca.mt_var dummy

scoreboard objectives add ca.wave_count dummy
scoreboard objectives add ca.wave_time dummy
scoreboard objectives add ca.trap_timer dummy
scoreboard objectives add ca.trap_clock dummy

scoreboard objectives add ca.colo_animation dummy

scoreboard objectives add ca.mimic_var dummy

scoreboard objectives add ca.place_trap minecraft.used:minecraft.glow_item_frame

bossbar remove cartographer:mimic
bossbar add cartographer:mimic {"text":"Mimic","color":"red","bold":true}
bossbar set cartographer:mimic color red
bossbar set cartographer:mimic style notched_6
bossbar set cartographer:mimic max 120

bossbar remove cartographer:colossus
bossbar add cartographer:colossus {"text":"Cage Colossus","color":"red","bold":true}
bossbar set cartographer:colossus color red
bossbar set cartographer:colossus style notched_10
bossbar set cartographer:colossus max 200

#Setup LoE data space
function cartographer_mimics:load/integration/active/clear


#Run loops
function cartographer_mimics:loop/tick/base
function cartographer_mimics:loop/6_second/base