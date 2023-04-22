scoreboard players set $slot ca.inf_cdl_var -106

data modify storage cartographer_custom_enchantments:infinity cdl_item set from storage i:internal working_it2

data modify storage cartographer_custom_enchantments:infinity transformed set value {id:"minecraft:firework_star",Count:1b,tag:{StoredItem:{},display:{Name:'{"text":"Infinite Potential","color":"#EAB0FF","italic":false}',Lore:['{"text":"This Infinity item has a cooldown.","color":"gray","italic":false}','{"text":"It is currently recharging and","color":"gray","italic":false}','{"text":"can be used again when recharged.","color":"gray","italic":false}','{"text":" "}','{"text":"Cooldown only decreases while the","color":"gray","italic":false}','{"text":"item is on your hotbar or offhand.","color":"gray","italic":false}']},HideFlags:32,Explosion:{Type:0,Colors:[I;9866889]}}}

execute if data storage cartographer_custom_enchantments:infinity cdl_item[0].tag.InfinityCooldown run function cartographer_custom_enchantments:enchant_effects/infinity/with_cdl/replace_offhand