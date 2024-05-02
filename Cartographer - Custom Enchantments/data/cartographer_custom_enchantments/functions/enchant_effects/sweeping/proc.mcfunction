scoreboard players operation $fire_aspect ca.sweeping = @s ca.fire_aspect
scoreboard players operation $frostbite ca.sweeping = @s ca.frostbite
scoreboard players operation $executioner ca.sweeping = @s ca.executioner
scoreboard players operation $knockback ca.sweeping = @s ca.knockback
scoreboard players operation $cauterize ca.sweeping = @s ca.cauterize

playsound minecraft:entity.player.attack.sweep player @a[distance=..8] ~ ~ ~ 1 1

particle minecraft:sweep_attack ^ ^0.75 ^1.25 0 0 0 0.2 1 force

execute store result score $damage ca.sweeping run attribute @s minecraft:generic.attack_damage get
scoreboard players operation $damage ca.sweeping *= $80 ca.CONSTANT
scoreboard players operation $damage ca.sweeping /= $100 ca.CONSTANT
execute store result storage cartographer:macro.custom_enchantments damage int 1 run scoreboard players get $damage ca.sweeping

function cartographer_custom_statuses:apply_effects/save/mainhand
function cartographer_custom_statuses:apply_self/save/mainhand
function cartographer_custom_statuses:apply_status/save/mainhand

execute anchored eyes positioned ^ ^-0.5 ^2 positioned ~-1 ~ ~-1 as @e[type=#bb:hostile,dx=3,dy=1,dz=3] at @s run function cartographer_custom_enchantments:enchant_effects/sweeping/effects with storage cartographer:macro.custom_enchantments

execute if score $do_linger ca.status_var matches 1.. run scoreboard players set @s ca.linger_cdl 300

execute unless entity @s[tag=ca.sweep_schedule_success] run function cartographer_custom_enchantments:enchant_effects/sweeping/consume