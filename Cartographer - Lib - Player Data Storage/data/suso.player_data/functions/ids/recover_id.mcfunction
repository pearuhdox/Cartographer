tellraw @s [{"text":"[!] ","color":"gold","bold":true},{"text":"A name change was detected. Updating player ID...","color":"yellow","bold":false}]
data modify storage suso:pldata temp set from storage suso:pldata id_data

function suso.player_data:ids/recover_id2