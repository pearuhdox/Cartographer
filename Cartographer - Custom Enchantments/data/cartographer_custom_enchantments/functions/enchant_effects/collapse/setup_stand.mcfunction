scoreboard players set @s ca.collapse 65

scoreboard players operation @s ca.efficiency = $efficiency ca.collapse
scoreboard players operation @s ca.sapper = $sapper ca.collapse
scoreboard players operation @s ca.eruption = $eruption ca.collapse

scoreboard players operation @s ca.adrenaline = $adrenaline ca.collapse
scoreboard players operation @s ca.energetic = $energetic ca.collapse
scoreboard players operation @s ca.frenzy = $frenzy ca.collapse
scoreboard players operation @s ca.concealed = $concealed ca.collapse

scoreboard players operation @s ca.fire_aspect = $fire_aspect ca.collapse
scoreboard players operation @s ca.evocation = $evocation ca.collapse
scoreboard players operation @s ca.frostbite = $frostbite ca.collapse
scoreboard players operation @s ca.knockback = $knockback ca.collapse
scoreboard players operation @s ca.executioner = $executioner ca.collapse
scoreboard players operation @s ca.hex_eater = $hex_eater ca.collapse
scoreboard players operation @s ca.first_strike = $first_strike ca.collapse
scoreboard players operation @s ca.tempo_theft = $tempo_theft ca.collapse
scoreboard players operation @s ca.cauterize = $cauterize ca.collapse

playsound minecraft:entity.elder_guardian.death player @a[distance=..12] ~ ~ ~ 0.5 2
playsound minecraft:entity.shulker.open player @a[distance=..12] ~ ~ ~ 1.5 0.5

particle minecraft:glow_squid_ink ~ ~0.8 ~ 0.2 0.3 0.2 0.05 5 normal

scoreboard players operation $extra_speed ca.collapse = $efficiency ca.collapse
scoreboard players operation $extra_speed ca.collapse *= $4 ca.CONSTANT

execute if score $extra_speed ca.collapse matches 36.. run scoreboard players set $extra_speed ca.collapse 35

scoreboard players operation @s ca.collapse += $extra_speed ca.collapse