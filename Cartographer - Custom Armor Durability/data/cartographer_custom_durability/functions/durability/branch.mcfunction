data remove block 4206900 18 4206899 Items

execute store result score @s ca.total_armor run attribute @s minecraft:generic.armor get
scoreboard players operation @s ca.total_hit /= $10 ca.CONSTANT

scoreboard players set $overhit ca.total_hit 0
scoreboard players operation $overhit ca.total_hit = @s ca.total_hit
scoreboard players operation $overhit ca.total_hit -= @s ca.total_armor

execute if score @s ca.head_dur matches 0.. run function cartographer_custom_durability:durability/modify_slot/head
execute if score @s ca.body_dur matches 0.. run function cartographer_custom_durability:durability/modify_slot/body
execute if score @s ca.legs_dur matches 0.. run function cartographer_custom_durability:durability/modify_slot/legs
execute if score @s ca.feet_dur matches 0.. run function cartographer_custom_durability:durability/modify_slot/feet

execute unless score @s ca.head_dur matches 0.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:3b}]
execute unless score @s ca.body_dur matches 0.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:2b}]
execute unless score @s ca.legs_dur matches 0.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:1b}]
execute unless score @s ca.feet_dur matches 0.. run data modify block 4206900 18 4206899 Items append from storage cartographer_custom_durability:armor Items[{Slot:0b}]

execute if entity @s[tag=ca.armor_dur_modify] run loot replace entity @s armor.feet 4 mine 4206900 18 4206899 air{drop_contents:1b}

execute if entity @s[tag=ca.ar.broken] run function cartographer_custom_durability:durability/armor_broken
execute unless entity @s[tag=ca.ar.broken] run stopsound @s * minecraft:entity.item.break

tag @s remove ca.armor_dur_modify
tag @s remove ca.ar.broken

tag @s remove ca.run_dur_fixer
scoreboard players set @s ca.total_armor 0