#Grab storage
function bb:lib/pldata/read

#data modify storage bbl:pldata sudo_root.working_data.budding_pedestals.tracked set value []
data modify storage bbl:pldata sudo_root.working_data.budding_pedestals.tracked append from storage cartographer_loot_additions:pedestal_position data

#Push to saved space
function bb:lib/pldata/write