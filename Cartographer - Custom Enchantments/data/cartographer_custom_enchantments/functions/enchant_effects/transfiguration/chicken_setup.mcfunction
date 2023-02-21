tag @s add ca.checked
scoreboard players set @s ca.transfig_time 85

scoreboard players operation @s ca.transfig_id = $transfig_id ca.transfig_id

data modify entity @s Health set from storage cartographer_custom_enchantments:transfiguration data.Health
data modify entity @s Motion set from storage cartographer_custom_enchantments:transfiguration data.Motion

effect give @s speed 5 0