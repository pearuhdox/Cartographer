scoreboard players set $possess ca.explosive 0
scoreboard players set $cauterize ca.explosive 0
scoreboard players set $flame ca.explosive 0
scoreboard players set $bleed ca.explosive 0
scoreboard players set $electrode ca.explosive 0
scoreboard players set $expose ca.explosive 0
scoreboard players set $frost ca.explosive 0
scoreboard players set $infection ca.explosive 0
scoreboard players set $flash ca.explosive 0

execute if entity @s[tag=is_vol_pos] run scoreboard players set $possess ca.explosive 1
execute if entity @s[tag=is_vol_cau] run scoreboard players set $cauterize ca.explosive 1
execute if entity @s[tag=is_vol_flame] run scoreboard players set $flame ca.explosive 1
execute if entity @s[tag=is_vol_bleed] run scoreboard players set $bleed ca.explosive 1
execute if entity @s[tag=is_vol_con] run scoreboard players set $electrode ca.explosive 1
execute if entity @s[tag=is_vol_pin] run scoreboard players set $expose ca.explosive 1
execute if entity @s[tag=is_vol_frost] run scoreboard players set $frost ca.explosive 1
execute if entity @s[tag=is_vol_infection] run scoreboard players set $infection ca.explosive 1
execute if entity @s[tag=is_vol_flash] run scoreboard players set $flash ca.explosive 1

# Allow data to be stored on the Crossbow for firework look
# Else use a default look
# Firework with UUID is summoned and given the data from crossbow.
# Mobs will now be given resistance 6 and dealt true damage equal to 67% the bow power + full shot charge. (So dmg / 2 then *60 / 100)

# UUID Hex Firework: 31182015-5241-6121-5199-225691852315
# UUID for summon: [I;823664661,1380016417,1368990294,-1853545707]

summon firework_rocket ~ ~1 ~ {UUID:[I;823664661,1380016417,1368990294,-1853545707],LifeTime:2,ShotAtAngle:1b,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:4,Colors:[I;16777215]}]}}}}

scoreboard players set 31182015-5241-6121-5199-225691852315 ca.lifetime 1
execute if data storage cartographer_custom_enchantments:explosive Fireworks.Explosions[0] run data modify entity 31182015-5241-6121-5199-225691852315 FireworksItem.tag.Fireworks set from storage cartographer_custom_enchantments:explosive Fireworks
execute if data storage cartographer_custom_enchantments:explosive Owner run data modify entity 31182015-5241-6121-5199-225691852315 Owner set from storage cartographer_custom_enchantments:explosive Owner

scoreboard players operation $damage ca.explosive = @s ca.vol_dmg
scoreboard players operation $damage ca.explosive /= $2 ca.CONSTANT
scoreboard players operation $damage ca.explosive *= $67 ca.CONSTANT
scoreboard players operation $damage ca.explosive /= $100 ca.CONSTANT

execute positioned ~ ~0.25 ~ run function cartographer_custom_enchantments:enchant_effects/explosive/particle_ring

tag @s add ca.vol_center

execute as @e[type=#bb:hostile,distance=..5.5] at @s run function cartographer_custom_enchantments:enchant_effects/explosive/branch

tag @s remove ca.vol_center

tag @s[type=#bb:hostile] remove is_explosive
tag @s[type=#bb:hostile] remove is_vol_red
tag @s[type=#bb:hostile] remove is_vol_con
tag @s[type=#bb:hostile] remove is_vol_flame
tag @s[type=#bb:hostile] remove is_vol_pin
tag @s[type=#bb:hostile] remove is_vol_pos
tag @s[type=#bb:hostile] remove is_vol_frost
tag @s[type=#bb:hostile] remove is_vol_flash
tag @s[type=#bb:hostile] remove is_vol_cau