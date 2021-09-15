#Initializes Item Structure on mob.
data modify entity @s HandItems[0].tag.Swap set from entity @s HandItems[1]

item replace entity @s weapon.offhand with minecraft:air

scoreboard players set @s ca.ambi_cool 0
tag @s add ambi_readied