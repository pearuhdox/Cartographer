#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags (trident).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

execute if entity @s[scores={tempest=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] tempest = @s tempest
execute if entity @s[scores={tempest=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={ricochet=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] ricochet = @s ricochet
execute if entity @s[scores={ricochet=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={current=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] current = @s current
execute if entity @s[scores={current=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={duelist=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] duelist = @s duelist
execute if entity @s[scores={duelist=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={hunter=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] hunter = @s hunter
execute if entity @s[scores={hunter=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={frostbite=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] frostbite = @s frostbite
execute if entity @s[scores={frostbite=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={committed=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] committed = @s committed
execute if entity @s[scores={committed=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={stunning=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] stunning = @s stunning
execute if entity @s[scores={stunning=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={decay=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] decay = @s decay
execute if entity @s[scores={decay=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={overload=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] overload = @s overload
execute if entity @s[scores={overload=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={vicious=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] vicious = @s vicious
execute if entity @s[scores={vicious=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

execute if entity @s[scores={fire_aspect=1..}] run scoreboard players operation @e[type=trident,limit=1,distance=..7,sort=nearest] fire_aspect = @s fire_aspect
execute if entity @s[scores={fire_aspect=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident