#Find the thrower for entropy values
function cartographer_custom_statuses:inflict/entropy/identify_player

#This runs only on first splash - aka first hit on lingering
execute unless score @s ca.lifetime matches 1.. run kill @e[type=area_effect_cloud,sort=nearest,limit=1]


data modify storage cartographer_custom_statuses:infliction data set value {}
data modify storage cartographer_custom_statuses:infliction data.Item set from entity @s data.Item

data modify storage cartographer_custom_statuses:infliction data.custom_potion_effects set from entity @s data.Item.tag.custom_potion_effects

function cartographer_custom_statuses:inflict/proliferate

scoreboard players set $do_chance ca.status_var -1

tag @a remove ca.pot_thrower