tag @s add ca.checked
scoreboard players operation @s ca.morph_time = $morph_value ca.status_var
scoreboard players add @s ca.morph_time 5

function cartographer_custom_statuses:popup/morph

scoreboard players operation @s ca.morph_id = $morph_id ca.morph_id

data modify entity @s Health set from storage cartographer_custom_statuses:morph data.Health
data modify entity @s Motion set from storage cartographer_custom_statuses:morph data.Motion

data modify entity @s ArmorItems[3].tag.MobData set from storage cartographer_custom_enchantments:transfiguration data


effect give @s speed 5 0

function cartographer_core:helper/unregister_ehid