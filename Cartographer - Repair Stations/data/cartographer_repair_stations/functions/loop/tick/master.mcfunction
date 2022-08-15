#Anti - ReckNRod
function cartographer_repair_stations:loop/tick/sign_branch

#Check if the armor stand doesn't exist and if it does NOT spawn the input frame
execute unless entity 31182015-1851-6191-0000-914162120 run summon glow_item_frame ~ ~1 ~1 {UUID:[I;823664661,407986577,-1995172319,536870912],Glowing:1b,Facing:1b,Invisible:0b,Invulnerable:1b,Item:{}}