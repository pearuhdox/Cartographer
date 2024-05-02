tp @s ~ ~-0.5 ~

execute if score $revive_health_pot ca.shade_health matches 1.. run damage @s 10 minecraft:out_of_world

title @s actionbar [{"selector":"@p[distance=1..]","color":"gold","italic":false},{"text":" has revived you via your shade!","color":"aqua"}]

tellraw @s [{"selector":"@p[distance=1..]","color":"gold","italic":false},{"text":" has revived you via your shade!","color":"aqua"}]
tellraw @s {"text":"You have returned to your death location.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}
tellraw @s {"text":"Your items have been returned to you.","color":"yellow","italic":false,"hoverEvent":{"action":"show_text","contents":[{"text":"","color":"aqua"}]}}