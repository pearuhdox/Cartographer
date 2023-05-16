data modify storage cartographer_custom_enchantments:infinity transformed set value {id:"minecraft:firework_star",Count:1b,tag:{StoredItem:{},display:{Name:'{"text":"Infinite Potential","color":"#EAB0FF","italic":false}',Lore:['{"text":"This Infinity item has a cooldown.","color":"gray","italic":false}','{"text":"It is currently recharging and","color":"gray","italic":false}','{"text":"can be used again when recharged.","color":"gray","italic":false}','{"text":" "}','{"text":"Cooldown only decreases while the","color":"gray","italic":false}','{"text":"item is on your hotbar or offhand.","color":"gray","italic":false}']},HideFlags:32,Explosion:{Type:0,Colors:[I;9866889]}}}

data modify storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem set from storage cartographer_custom_enchantments:infinity cdl_item[0]
data remove storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.Slot

data modify storage cartographer_custom_enchantments:infinity transformed.Slot set value 0b

data modify storage cartographer_custom_enchantments:infinity cdl_item[0] set from storage cartographer_custom_enchantments:infinity transformed

data modify storage i:internal working_it2 set from storage cartographer_custom_enchantments:infinity cdl_item

execute store result score @s ca.inf_cdl_o run data get storage cartographer_custom_enchantments:infinity transformed.tag.StoredItem.tag.InfinityCooldown
scoreboard players add @s ca.inf_cdl_o 1


scoreboard players set $success ca.inf_cdl_var 1