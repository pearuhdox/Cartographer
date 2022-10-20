scoreboard players add @s ca.recoil_time 1

execute if score @s ca.recoil_time matches 2 run scoreboard players remove @s ca.recoil_count 1

execute if score @s ca.recoil_time matches 2 run function cartographer_custom_enchantments:enchant_effects/recoil/summon

execute if score @s ca.recoil_time matches 2 run playsound minecraft:item.crossbow.shoot player @a[distance=..8] ~ ~ ~ 1.25 0.5
execute if score @s ca.recoil_time matches 2 run playsound minecraft:entity.arrow.hit player @a[distance=..8] ~ ~ ~ 1.25 0.5

execute if score @s ca.recoil_time matches 2..3 run scoreboard players set $gmr_freeze ca.mutex 5
execute if score @s ca.recoil_time matches 2..3 run gamerule mobGriefing false

execute if score @s ca.recoil_time matches 2..4 anchored eyes positioned ~ ~1 ~ run summon falling_block ~ ~ ~ {Tags:["ca.stop_breaking"],BlockState:{Name:"minecraft:barrier"},NoGravity:1b,Time:1,FallHurtMax:0,FallDistance:0f,FallHurtAmount:0f}

execute if score @s ca.recoil_time matches 2 store result score @s ca.recoil_mode run data get entity @s playerGameType

execute if score @s ca.recoil_mode matches 0 if score @s ca.recoil_time matches 3 run gamemode creative @s


execute if score @s ca.recoil_time matches 4 run function cartographer_custom_enchantments:enchant_effects/recoil/block_detonate

execute if score @s ca.recoil_time matches 4 run scoreboard players set $gmr_freeze ca.mutex 1

execute if score @s ca.recoil_mode matches 0 if score @s ca.recoil_time matches 4 run gamemode survival @s

execute if score @s ca.recoil_time matches 4 run tag @s remove recoil_checked
execute if score @s ca.recoil_time matches 4 run scoreboard players set @s ca.recoil_time 0

#execute if score @s ca.recoil_time matches 11 run scoreboard players remove @s ca.recoil_count 1
#execute if score @s ca.recoil_time matches 11 anchored eyes run particle smoke ^ ^ ^1 0.35 0.35 0.35 0 10 normal

#execute if score @s ca.recoil_time matches 36 run scoreboard players set @s ca.recoil_time 0