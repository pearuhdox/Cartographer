
function bb:lib/danger_check/main

execute if entity @s[tag=bbl.in_danger] run scoreboard players set @s bbl.actionbar_spam_mute 80

title @s[tag=bbl.in_danger] actionbar ["","You musn't be in danger to do that!"]

title @s[tag=bbl.in_danger.in_void] actionbar ["","You musn't be falling in the void to do that!"]
title @s[tag=bbl.in_danger.in_damage_block] actionbar ["","You musn't be in or on a dangeorus block to do that!"]
title @s[tag=bbl.in_danger.falling] actionbar ["","You musn't be falling to do that!"]
title @s[tag=bbl.in_danger.drowning] actionbar ["","You musn't be drowning to do that!"]
title @s[tag=bbl.in_danger.taking_dot] actionbar ["","You musn't be taking damage over time to do that!"]
title @s[tag=bbl.in_danger.targeted_by_mob] actionbar ["","You musn't be under attack by nearby mobs to do that!"]
