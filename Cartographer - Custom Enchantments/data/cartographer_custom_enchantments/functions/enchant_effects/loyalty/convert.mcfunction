summon armor_stand ~ ~-1 ~ {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,Tags:["loyalty_projectile"],Pose:{RightArm:[-15f,180f,-40f]},DisabledSlots:4144959,HandItems:[{id:"minecraft:trident",Count:1b,tag:{Enchantments:[{}]}},{}]}

playsound minecraft:item.trident.return player @a[distance=..32] ~ ~ ~ 3 1

execute if entity @s[scores={ca.current=1..}] positioned ~ ~-1 ~ run scoreboard players set @e[tag=loyalty_projectile,distance=..1,sort=nearest] ca.current 1
execute positioned ~ ~-1 ~ run scoreboard players operation @e[tag=loyalty_projectile,distance=..1,sort=nearest] ca.loyalty = @s ca.loyalty
execute positioned ~ ~-1 ~ run scoreboard players add @e[tag=loyalty_projectile,distance=..1,sort=nearest] ca.loyalty 1

kill @s

#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" creating Loyalty returner.","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]