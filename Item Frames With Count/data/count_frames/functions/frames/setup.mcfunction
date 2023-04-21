execute store result score $player_count count_frames.count run data get entity @p SelectedItem.Count

scoreboard players operation @s count_frames.count = $player_count count_frames.count

tellraw @p [{"text":"Placed ","color":"aqua","bold":false,"italic":false},{"score":{"name":"@s","objective":"count_frames.count"},"color":"yellow","bold":true,"italic":false},{"text":" items in this frame.","color":"aqua","italic":false}]

tag @s add count_frames.filled