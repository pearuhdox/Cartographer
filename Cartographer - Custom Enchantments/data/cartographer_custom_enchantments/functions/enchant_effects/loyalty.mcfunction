execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run item replace block 4206900 0 4206899 container.0 with heart_of_the_sea{IsTrident:1,display:{Name:'{"text":"Prismarine Conch","color":"#8CFFE0","italic":false}',Lore:['[{"text":"A symbol of a weapon\'s ","color":"gray","italic":false},{"text":"Loyalty","color":"aqua","italic":false},{"text":".","color":"gray","italic":false}]','{"text":"When the trident returns to you,","color":"gray","italic":false}','{"text":"this item will be replaced with","color":"gray","italic":false}','[{"text":"with the ","color":"gray","italic":false},{"text":"Loyalty ","color":"aqua","italic":false},{"text":"trident.","color":"gray","italic":false}]']},HideFlags:33,Trident:{},Enchantments:[{id:"minecraft:mending",lvl:1s}]} 1
execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run data modify block 4206900 0 4206899 Items[0].tag.Trident set from entity @e[type=trident,distance=..5,limit=1,sort=nearest] Trident

execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run data modify entity @e[type=trident,limit=1,sort=nearest,distance=..5] player set value 0b
execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run tag @e[type=trident,limit=1,sort=nearest,distance=..5] add ca.loyalty

execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..}] run scoreboard players operation @e[type=trident,limit=1,sort=nearest,distance=..5] ca.loyalty = @s ca.loyalty
execute if entity @s[gamemode=!creative,scores={ca.loyalty=11..}] run scoreboard players remove @e[type=trident,limit=1,sort=nearest,distance=..5] ca.loyalty 10

execute if entity @s[gamemode=!creative,scores={ca.loyalty=1..10}] in minecraft:overworld run loot replace entity @s weapon.mainhand 1 mine 4206900 0 4206899 air{drop_contents:1b}
execute if entity @s[gamemode=!creative,scores={ca.loyalty=11..20}] in minecraft:overworld run loot replace entity @s weapon.offhand 1 mine 4206900 0 4206899 air{drop_contents:1b}

tag @s add waiting_loyalty

#Debug Message
tellraw @a[tag=debug,scores={ca.loyalty=1..}] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" used Loyalty.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]