data remove storage cartographer_custom_statuses:morph data.Motion

data modify entity @s {} merge from storage cartographer_custom_statuses:morph data

function cartographer_core:helper/unregister_ehid

#tag @s add ca.was_morphed
scoreboard players set @s ca.morph_immune 600
tag @s add ca.checked_morph