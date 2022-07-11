execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 8
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 6

function cartographer_mob_abilities:ability_traits/cooldown_traits

scoreboard players set @s ability_charge 0

scoreboard players set @s ca.raycast 12

data merge entity @s {NoAI:0}

playsound minecraft:block.iron_door.close hostile @a[distance=..20] ~ ~ ~ 2 0.5 1
playsound minecraft:entity.zombie.attack_iron_door hostile @a[distance=..20] ~ ~ ~ 1 0.5 1
playsound minecraft:entity.generic.explode hostile @a[distance=..20] ~ ~ ~ 0.75 2 1

function cartographer_mob_abilities:abilities/hookshot/calc_damage

execute as @s positioned ~ ~1 ~ run function cartographer_mob_abilities:abilities/hookshot/raycast

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..18] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a[distance=..18] remove ability_tagged
tag @a[distance=..18] remove hooked

execute if score $hook_check ca.hooked matches 101 run scoreboard players set @s mob_move_red 101
execute if score $hook_check ca.hooked matches 101 run scoreboard players set @s ca.hooked 101
execute if score $hook_check ca.hooked matches 101 run scoreboard players add @s cooldown 4

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
scoreboard players remove $tokened_total ca.tokens 1
tag @s remove attacking
tag @s remove tokened
tag @s remove can_see_player

kill @e[type=armor_stand,tag=hook_marker,sort=nearest,limit=1]

#say test