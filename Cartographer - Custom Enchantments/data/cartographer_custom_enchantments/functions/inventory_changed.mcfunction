function cartographer_custom_enchantments:calc_enchant/reset

#TODO: WHAT??????? Update: The answer is mojang.
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_feet] at @s unless entity @s[nbt={Inventory:[{Slot:100b}]}] run replaceitem entity @s armor.feet minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_legs] at @s unless entity @s[nbt={Inventory:[{Slot:101b}]}] run replaceitem entity @s armor.legs minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_chest] at @s unless entity @s[nbt={Inventory:[{Slot:102b}]}] run replaceitem entity @s armor.chest minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_head] at @s unless entity @s[nbt={Inventory:[{Slot:103b}]}] run replaceitem entity @s armor.head minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_offhand] at @s unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run replaceitem entity @s weapon.offhand minecraft:air
#execute as @a[predicate=cartographer_custom_enchantments:empty_slots/empty_mainhand] at @s unless entity @s[nbt={SelectedItem:{}}] run replaceitem entity @s weapon.mainhand minecraft:air

function cartographer_custom_enchantments:calc_enchant/head
function cartographer_custom_enchantments:calc_enchant/chest
function cartographer_custom_enchantments:calc_enchant/legs
function cartographer_custom_enchantments:calc_enchant/feet
function cartographer_custom_enchantments:calc_enchant/offhand
function cartographer_custom_enchantments:calc_enchant/mainhand

function cartographer_custom_enchantments:calc_enchant/thorns

function cartographer_custom_enchantments:calc_enchant/sapper

function cartographer_custom_enchantments:calc_enchant/set_max

execute if entity @s[tag=!doing_auto_charge] run function cartographer_custom_enchantments:calc_enchant/auto_charge
function cartographer_custom_enchantments:calc_enchant/curse_malevolence

function cartographer_custom_enchantments:calc_enchant/has_passive

#Run Two Handed Here
execute if entity @s[scores={helper_deathtime=41..},tag=!processed_two_handed] run function cartographer_custom_enchantments:enchant_effects/curse_two_handed_branch

advancement revoke @s only cartographer_custom_enchantments:inventory_changed

#Remove the repeating and echo tags so it shows an updated ammo count.
tag @s remove showing_repeating
tag @s remove showing_echo