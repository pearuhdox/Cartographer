# Check that coordinate 1 is set
execute unless entity @s[scores={bbl.relco.X1=-2147483648..2147483647,bbl.relco.Y1=-2147483648..2147483647,bbl.relco.Z1=-2147483648..2147483647}] run tellraw @s [{"text":"[Relative Coordinates] ","color":"gold","clickEvent":{"action":"suggest_command","value":"/function relco:"}},{"text":"Set coordinate 1 to display relative coordinates.","color":"white"}]

# Check that coordinate 2 is set
execute unless entity @s[scores={bbl.relco.X2=-2147483648..2147483647,bbl.relco.Y2=-2147483648..2147483647,bbl.relco.Z2=-2147483648..2147483647}] run tellraw @s [{"text":"[Relative Coordinates] ","color":"gold","clickEvent":{"action":"suggest_command","value":"/function relco:"}},{"text":"Set coordinate 2 to display relative coordinates.","color":"white"}]

# Run the actual display code if both coordinates are set

tag @s remove bbl.relco.all_set
tag @s[scores={bbl.relco.X1=-2147483648..2147483647,bbl.relco.Y1=-2147483648..2147483647,bbl.relco.Z1=-2147483648..2147483647,bbl.relco.X2=-2147483648..2147483647,bbl.relco.Y2=-2147483648..2147483647,bbl.relco.Z2=-2147483648..2147483647}] add bbl.relco.all_set

scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.XD = @s bbl.relco.X2
scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.YD = @s bbl.relco.Y2
scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.ZD = @s bbl.relco.Z2
scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.XD -= @s bbl.relco.X1
scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.YD -= @s bbl.relco.Y1
scoreboard players operation @s[tag=bbl.relco.all_set] bbl.relco.ZD -= @s bbl.relco.Z1

tellraw @s[tag=bbl.relco.all_set] [{"text":"[Relative Coordinates] ","color":"gold","clickEvent":{"action":"suggest_command","value":"/function relco:"}},{"text":"~","color":"red"},{"score":{"name":"*","objective":"bbl.relco.XD"},"color":"red"},{"text":" ~","color":"green"},{"score":{"name":"*","objective":"bbl.relco.YD"},"color":"green"},{"text":" ~","color":"blue"},{"score":{"name":"*","objective":"bbl.relco.ZD"},"color":"blue"}]

tag @s remove bbl.relco.all_set

