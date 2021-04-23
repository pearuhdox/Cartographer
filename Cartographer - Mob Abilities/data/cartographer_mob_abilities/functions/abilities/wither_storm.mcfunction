execute if score $global helper_diff matches ..2 run scoreboard players set @s cooldown 20
execute if score $global helper_diff matches 3.. run scoreboard players set @s cooldown 15

scoreboard players set @s ability_charge 0

effect give @s slowness 6 6 true
effect give @s blindness 6 0 true

playsound minecraft:entity.wither.spawn hostile @a[distance=..24] ~ ~ ~ 2 2

scoreboard players set @s wither_storms 18

execute if entity @e[scores={wither_storms=1..}] run schedule function cartographer_mob_abilities:abilities/wither_storm_recurse 3t

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/return
tag @s remove attacking
tag @s remove tokened