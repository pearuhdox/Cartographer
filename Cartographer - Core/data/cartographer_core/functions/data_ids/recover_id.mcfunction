tellraw @s [{"text":"[!] ","color":"gold","bold":true},{"text":"A name change was detected. Updating player ID...","color":"yellow","bold":false}]
data modify storage cartographer_core:pldata temp set from storage cartographer_core:pldata id_data

function cartographer_core:data_ids/recover_id2