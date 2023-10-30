execute if score @s ca.charm_time matches 1 anchored eyes positioned ^ ^ ^ positioned ~ ~0.5 ~ run function cartographer_custom_statuses:tick_effects/charmed/warmup_start

execute if score @s ca.charm_time matches 6 anchored eyes positioned ^ ^ ^ positioned ~ ~0.5 ~ run particle minecraft:dust_color_transition 1 0.635 0.847 4 1 1 1 ~ ~ ~ 0 0 0 0 1 force


execute if score @s ca.charm_time matches 12 anchored eyes positioned ^ ^ ^ positioned ~ ~0.5 ~ run function cartographer_custom_statuses:tick_effects/charmed/vfx
execute if score @s ca.charm_time matches 15 anchored eyes positioned ^ ^ ^ positioned ~ ~0.4 ~ run function cartographer_custom_statuses:tick_effects/charmed/vfx
execute if score @s ca.charm_time matches 18 anchored eyes positioned ^ ^ ^ positioned ~ ~0.3 ~ run function cartographer_custom_statuses:tick_effects/charmed/vfx
execute if score @s ca.charm_time matches 21 anchored eyes positioned ^ ^ ^ positioned ~ ~0.2 ~ run function cartographer_custom_statuses:tick_effects/charmed/vfx
execute if score @s ca.charm_time matches 24 anchored eyes positioned ^ ^ ^ positioned ~ ~0.1 ~ run function cartographer_custom_statuses:tick_effects/charmed/vfx


execute if score @s ca.charm_time matches 24 at @s run playsound minecraft:entity.illusioner.cast_spell hostile @a[distance=..16] ~ ~ ~ 2 1.25
execute if score @s ca.charm_time matches 24 at @s run playsound minecraft:entity.illusioner.mirror_move hostile @a[distance=..16] ~ ~ ~ 1 1.5
execute if score @s ca.charm_time matches 24 at @s run playsound minecraft:entity.illusioner.prepare_mirror hostile @a[distance=..16] ~ ~ ~ 1 2

execute if score @s ca.charm_time matches 24 if entity @s[type=creeper] run function cartographer_custom_statuses:tick_effects/charmed/creeper
execute if score @s ca.charm_time matches 24 unless entity @s[type=creeper] run function cartographer_custom_statuses:tick_effects/charmed/not_creeper


execute unless score @s ca.charm_time matches 25.. run scoreboard players add @s ca.charm_time 1
execute if score @s ca.charm_time matches 25.. run function cartographer_custom_statuses:tick_effects/charmed/active
