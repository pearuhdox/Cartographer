#execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run item replace block 4206900 0 4206899 container.0 with heart_of_the_sea{IsTrident:1,display:{Name:'{"text":"Prismarine Conch","color":"#8CFFE0","italic":false}',Lore:['[{"text":"A symbol of a weapon\'s ","color":"gray","italic":false},{"text":"Loyalty","color":"aqua","italic":false},{"text":".","color":"gray","italic":false}]','{"text":"When the trident returns to you,","color":"gray","italic":false}','{"text":"this item will be replaced with","color":"gray","italic":false}','[{"text":"with the ","color":"gray","italic":false},{"text":"Loyalty ","color":"aqua","italic":false},{"text":"trident.","color":"gray","italic":false}]']},HideFlags:33,Trident:{},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
#execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run data modify block 4206900 0 4206899 Items[0].tag.Trident set from entity @e[type=trident,distance=..5,limit=1,sort=nearest] Trident

#Check if the player has hydraulic
scoreboard players set $hydraulic ca.loyalty 0
scoreboard players operation $hydraulic ca.loyalty = @s ca.hydraulic

scoreboard players set $collapse ca.loyalty 0
execute if score @s ca.collapse matches 1 run scoreboard players set $collapse ca.loyalty 1

#Find the nearest trident in front of the player's view, we want to image it and store it
execute anchored eyes positioned ^ ^ ^3 as @e[type=trident,limit=1,sort=nearest,distance=..4,tag=!loyalty_checked] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty/save_trident

#Package the loyalty item based on score
function cartographer_custom_enchantments:enchant_effects/loyalty/package

execute unless score @s ca.loyalty_time matches 1.. run scoreboard players set @s ca.loyalty_time 1

#Debug Message
tellraw @a[tag=debug,scores={ca.loyalty=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@s","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Loyalty.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]