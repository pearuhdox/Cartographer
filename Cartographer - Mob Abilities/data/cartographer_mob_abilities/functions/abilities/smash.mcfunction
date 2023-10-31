scoreboard players set @s cooldown 8

function cartographer_mob_abilities:ability_traits/cooldown_traits


tag @s remove leaping

scoreboard players set @s ability_charge 0

execute positioned ~ ~ ~ run particle minecraft:explosion_emitter ~ ~1 ~ 0 0 0 0 1

playsound minecraft:entity.zombie.break_wooden_door hostile @a[distance=..16] ~ ~ ~ 2 0.75

function cartographer_mob_abilities:abilities/smash/calc_damage

tp 31182015-4512-2011-3118-115180000000 ~ ~6 ~

data merge entity @s {Motion:[0.0,0.5,0.0]}

execute if entity @s[tag=ca.zephyrous] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.knockback] run scoreboard players set $zeph_check ca.mob_var 1
execute if entity @s[tag=ca.webbing] run scoreboard players set $zeph_check ca.mob_var 1

execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5] at @s unless block ~ ~-0.3 ~ air facing entity 31182015-4512-2011-3118-115180000000 feet run function cartographer_mob_abilities:abilities/smash/player
execute as @s positioned as @a[distance=..3.5] run function cartographer_mob_abilities:helper/damage/ability_melee with storage cartographer:macro.mob_abilities

scoreboard players set $zeph_check ca.mob_var 0

#Trait Effects
execute as @a[gamemode=!spectator,gamemode=!creative,distance=..3.5] at @s unless block ~ ~-0.3 ~ air run tag @s add ability_tagged
execute if entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits

execute unless entity @a[tag=ability_tagged,gamemode=!spectator,gamemode=!creative,distance=..3.5] run execute unless entity @s[tag=ca.ignore_traits_active] run function cartographer_mob_abilities:ability_traits/call_all_traits_no_hit

tag @a remove ability_tagged

data modify entity @s active_effects append value {id:"minecraft:slow_falling",duration:10,amplifier:0b}

scoreboard players set @s ca.smash_air -1

scoreboard players remove @s[scores={recast_count=1..}] recast_count 1

tp 31182015-4512-2011-3118-115180000000 4206900 128 4206900

#Token Management. Remove the Token, set all nearby players token refresh on cooldown.
function cartographer_mob_abilities:helper/token/mob_manage/check_accelerate