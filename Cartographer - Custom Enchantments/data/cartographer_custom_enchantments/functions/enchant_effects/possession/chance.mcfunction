scoreboard players operation $melee ca.melee_chance -= $chance_add ca.possession
execute if score $melee ca.melee_chance matches ..0 run scoreboard players set $melee ca.melee_chance 1

execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.eft_possess matches 1.. run particle minecraft:glow_squid_ink ~ ~1 ~ 0 0.5 0.3 0.1 5 normal
execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.eft_possess matches 1.. run playsound minecraft:entity.skeleton_horse.hurt player @a[distance=..8] ~ ~ ~ 1 0.5
execute if score $melee ca.melee_chance <= $percent_poss ca.melee_chance unless score @s ca.eft_possess matches 1.. run scoreboard players set @s ca.eft_possess 121

execute if score @s ca.eft_possess matches 1.. run scoreboard players add @s ca.eft_possess 25