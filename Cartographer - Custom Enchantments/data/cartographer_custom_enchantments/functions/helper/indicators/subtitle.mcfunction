data modify storage ca.indicator Ammo set value 0

execute if score @s ca.repeating matches 1..7 run data modify storage ca.indicator Ammo set from entity @s SelectedItem.tag.Ammo
execute if score @s ca.repeating matches 11..17 run data modify storage ca.indicator Ammo set from entity @s Inventory[{Slot:-106b}].tag.Ammo
execute store result score @s ca.ind_val run data get storage ca.indicator Ammo

title @s[tag=!showing_repeating,scores={ca.repeating=1..7}] times 0 45 5
title @s[tag=!showing_repeating,scores={ca.repeating=11..17}] times 0 45 5
title @s[tag=!showing_repeating,scores={ca.repeating=1..7}] title {"text":" "}
title @s[tag=!showing_repeating,scores={ca.repeating=11..17}] title {"text":" "}

title @s[tag=!showing_repeating,scores={ca.ind_val=8,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=7,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=6,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=5,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=4,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=3,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=2,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=1,ca.repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=0,ca.repeating=1..7}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

title @s[tag=!showing_repeating,scores={ca.ind_val=8,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=7,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=6,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=5,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=4,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=3,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=2,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=1,ca.repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_repeating,scores={ca.ind_val=0,ca.repeating=11..17}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]


title @s[tag=!showing_echo,scores={ca.echo=1..}] times 0 45 5
title @s[tag=!showing_echo,scores={ca.echo=1..}] title {"text":" "}

title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=4..}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=3}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=2}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=1}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[tag=!showing_echo,scores={ca.echo=1..,ca.echo_charges=0}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

scoreboard players set @s ca.ind_val 0

tag @s[scores={ca.echo=1..}] add showing_echo
tag @s[scores={ca.repeating=1..}] add showing_repeating

title @s[tag=!showing_echo,scores={ca.sw_time=1..}] times 0 45 5
title @s[tag=!showing_echo,scores={ca.sw_time=1..}] title {"text":" "}

title @s[scores={ca.sw_time=181..}] subtitle [{"text":",","color":"yellow"},{"text":".........","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=161..180}] subtitle [{"text":",","color":"yellow"},{"text":"........","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=141..160}] subtitle [{"text":",","color":"yellow"},{"text":".......","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=121..140}] subtitle [{"text":",","color":"yellow"},{"text":"......","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=101..120}] subtitle [{"text":",","color":"yellow"},{"text":".....","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=81..100}] subtitle [{"text":",","color":"yellow"},{"text":"....","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=61..80}] subtitle [{"text":",","color":"yellow"},{"text":"...","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=41..60}] subtitle [{"text":",","color":"yellow"},{"text":"..","color":"green","italic":false},{"text":",","color":"yellow"}]
title @s[scores={ca.sw_time=21..40}] subtitle [{"text":",","color":"yellow"},{"text":".","color":"green","italic":false},{"text":",","color":"yellow"}]
