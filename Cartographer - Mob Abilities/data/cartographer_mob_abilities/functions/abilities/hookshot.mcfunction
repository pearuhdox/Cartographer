scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.raycast 14

data merge entity @s {NoAI:0}

playsound minecraft:block.iron_door.close hostile @a[distance=..20] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..20] ~ ~ ~ 1 0.5 1
playsound minecraft:delta.entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 0.75 2 1

function cartographer_mob_abilities:abilities/hookshot/calc_damage

scoreboard players set $fast_drag ca.mob_var 0
execute if entity @s[tag=ca.faster_hookshot] run scoreboard players set $fast_drag ca.mob_var 1

execute positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/hookshot/raycast

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..18] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a[distance=..18] remove ability_tagged
tag @a[distance=..18] remove hooked

execute if score $hook_check ca.hooked matches 101 run scoreboard players set @s mob_move_red 101
execute if score $hook_check ca.hooked matches 101 run scoreboard players set @s ca.hooked 101
execute if score $hook_check ca.hooked matches 101 run scoreboard players add @s cooldown 4



#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate

kill @e[type=armor_stand,tag=hook_marker,sort=nearest,limit=1]

#say test