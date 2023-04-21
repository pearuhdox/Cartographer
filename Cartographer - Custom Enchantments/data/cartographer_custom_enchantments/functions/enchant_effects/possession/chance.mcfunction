scoreboard players operation $melee ca.melee_chance -= $chance_add ca.possession
execute if score $melee ca.melee_chance matches ..0 run scoreboard players set $melee ca.melee_chance 1

execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.possess_time matches 1.. run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0.5 0.3 0.1 5 normal
execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.possess_time matches 1.. run playsound minecraft:entity.skeleton_horse.hurt player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.possess_time matches 1.. run function #minecraft:cartographer/events/enchants_mob_hit/melee/possession/proc

scoreboard players set $pos_success ca.var 0
execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.possess_time matches 1.. run scoreboard players set $pos_success ca.var 1

execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.possess_time matches 1.. run scoreboard players set @s ca.possess_time 1

#execute if score @s ca.possess_time matches 61.. run scoreboard players add @s ca.eft_possess 25