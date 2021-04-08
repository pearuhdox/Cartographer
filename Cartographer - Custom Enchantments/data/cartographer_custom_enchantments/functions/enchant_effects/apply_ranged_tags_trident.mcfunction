#Debug Message
tellraw @a[tag=debug] [{"text":"[Debug] ","color":"red","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3","italic":true}]}},{"text":"❱ ","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"selector":"@p","color":"aqua","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}},{"text":" applying ranged tags (trident).","color":"#FFE0A3","hoverEvent":{"action":"show_text","contents":[{"text":"","color":"#FFE0A3"}]}}]

#Tempest
execute if entity @s[scores={tempest=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add tempest_1
execute if entity @s[scores={tempest=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add tempest_2
execute if entity @s[scores={tempest=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add tempest_3
execute if entity @s[scores={tempest=4}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add tempest_4
execute if entity @s[scores={tempest=5}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add tempest_5
execute if entity @s[scores={tempest=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Ricochet
execute if entity @s[scores={ricochet=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add ricochet_1
execute if entity @s[scores={ricochet=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add ricochet_2
execute if entity @s[scores={ricochet=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add ricochet_3
execute if entity @s[scores={ricochet=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Current
execute if entity @s[scores={current=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add current
execute if entity @s[scores={current=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Duelist Ranged Synergy
execute if entity @s[scores={duelist=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add duelist_1
execute if entity @s[scores={duelist=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add duelist_2
execute if entity @s[scores={duelist=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add duelist_3
execute if entity @s[scores={duelist=4}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add duelist_4
execute if entity @s[scores={duelist=5}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add duelist_5
execute if entity @s[scores={duelist=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Hunter Ranged Synergy
execute if entity @s[scores={hunter=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add hunter_1
execute if entity @s[scores={hunter=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add hunter_2
execute if entity @s[scores={hunter=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add hunter_3
execute if entity @s[scores={hunter=4}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add hunter_4
execute if entity @s[scores={hunter=5}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add hunter_5
execute if entity @s[scores={hunter=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Frostbite Ranged Synergy
execute if entity @s[scores={frostbite=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add frostbite_1
execute if entity @s[scores={frostbite=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add frostbite_2
execute if entity @s[scores={frostbite=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add frostbite_3
execute if entity @s[scores={frostbite=4}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add frostbite_4
execute if entity @s[scores={frostbite=5}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add frostbite_5
execute if entity @s[scores={frostbite=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Committed Ranged Synergy
execute if entity @s[scores={committed=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add committed_1
execute if entity @s[scores={committed=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add committed_2
execute if entity @s[scores={committed=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add committed_3
execute if entity @s[scores={committed=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Stunning Ranged Synergy
execute if entity @s[scores={stunning=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add stunning_1
execute if entity @s[scores={stunning=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add stunning_2
execute if entity @s[scores={stunning=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add stunning_3
execute if entity @s[scores={stunning=4}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add stunning_4
execute if entity @s[scores={stunning=5}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add stunning_5
execute if entity @s[scores={stunning=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Decay Ranged Synergy
execute if entity @s[scores={decay=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add decay_1
execute if entity @s[scores={decay=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add decay_2
execute if entity @s[scores={decay=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add decay_3
execute if entity @s[scores={decay=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Overload Ranged Synergy
execute if entity @s[scores={overload=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add overload_1
execute if entity @s[scores={overload=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add overload_2
execute if entity @s[scores={overload=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add overload_3
execute if entity @s[scores={overload=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Vicious Ranged Synergy
execute if entity @s[scores={vicious=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add vicious_1
execute if entity @s[scores={vicious=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add vicious_2
execute if entity @s[scores={vicious=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add vicious_3
execute if entity @s[scores={vicious=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident

#Fire Aspect Ranged Synergy
execute if entity @s[scores={fire_aspect=1}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add fire_aspect_1
execute if entity @s[scores={fire_aspect=2}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add fire_aspect_2
execute if entity @s[scores={fire_aspect=3}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add fire_aspect_3
execute if entity @s[scores={fire_aspect=1..}] run tag @e[type=trident,limit=1,distance=..7,sort=nearest] add custom_trident