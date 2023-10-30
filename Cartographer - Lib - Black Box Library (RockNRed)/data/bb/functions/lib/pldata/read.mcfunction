
#Remove working data
data remove storage bbl:pldata sudo_root.working_data
#Store id in storage
execute store result storage bbl:pldata sudo_root.target_id int 1 run scoreboard players get @s bbl.id
#Run branch with stored id
function bb:lib/pldata/internal/pull_data with storage bbl:pldata sudo_root
