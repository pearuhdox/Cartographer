#Run Reset First
function cartographer_custom_enchantments:calc_enchant/reset

#Find Custom Items on the Equipped Slots
function cartographer_custom_enchantments:calc_enchant/find_custom


#For each custom item found, run the proper calculation function.
execute if entity @s[tag=check_head] run function cartographer_custom_enchantments:calc_enchant/head
execute if entity @s[tag=check_body] run function cartographer_custom_enchantments:calc_enchant/chest
execute if entity @s[tag=check_legs] run function cartographer_custom_enchantments:calc_enchant/legs
execute if entity @s[tag=check_feet] run function cartographer_custom_enchantments:calc_enchant/feet
execute unless entity @s[predicate=cartographer_custom_enchantments:hold_armor_offhand] run function cartographer_custom_enchantments:calc_enchant/offhand
execute unless entity @s[predicate=cartographer_custom_enchantments:hold_armor_mainhand] run function cartographer_custom_enchantments:calc_enchant/mainhand

function cartographer_custom_enchantments:calc_enchant/thorns

function cartographer_custom_enchantments:calc_enchant/sapper

function cartographer_custom_enchantments:calc_enchant/set_max

execute if entity @s[tag=!doing_auto_charge] run function cartographer_custom_enchantments:calc_enchant/auto_charge
function cartographer_custom_enchantments:calc_enchant/curse_malevolence

function cartographer_custom_enchantments:calc_enchant/has_passive

#Uncompress Items taken out of the offhand and put in the normal inventory
function cartographer_custom_enchantments:enchant_effects/curse_two_handed/inv_fix

scoreboard players set $cu_en_ranged ca.enabler 1
scoreboard players set $cu_en_kill ca.enabler 1
scoreboard players set $cu_en_melee ca.enabler 1
scoreboard players set $cu_en_passive ca.enabler 1
scoreboard players set $cu_en_player_death ca.enabler 1
scoreboard players set $cu_en_spawner ca.enabler 1

#Remove the ca.repeating and ca.echo tags so it shows an updated ammo count.
tag @s remove showing_repeating
tag @s remove showing_echo