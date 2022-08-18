execute unless entity @a[distance=..16,gamemode=creative] align xyz run kill @e[type=item,dx=1,dy=1,dz=1]

particle explosion ~ ~0.5 ~ 0 0 0 0 1 force 
particle minecraft:sculk_soul ~ ~0.5 ~ 0.1 0.1 0.1 0.1 20 normal

playsound minecraft:entity.allay.death player @a[distance=..16] ~ ~ ~ 0.75 2
playsound minecraft:entity.villager.death player @a[distance=..16] ~ ~ ~ 0.5 2

execute unless entity @a[gamemode=creative] run setblock ~ ~ ~ chest{Lock:"Soul Locked Chest Ultimate Keycode"}

data modify block ~ ~ ~ Items set from entity @s ArmorItems[0].tag.Items