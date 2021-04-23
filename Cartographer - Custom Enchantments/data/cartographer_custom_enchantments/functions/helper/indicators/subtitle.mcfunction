data modify storage ca.indicator Ammo set value 0

execute if score @s repeating matches 1..7 run data modify storage ca.indicator Ammo set from entity @s SelectedItem.tag.Ammo
execute if score @s repeating matches 11..17 run data modify storage ca.indicator Ammo set from entity @s Inventory[{Slot:-106b}].tag.Ammo
execute store result score @s ca.ind_val run data get storage ca.indicator Ammo

title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7}] times 0 55 5
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17}] times 0 55 5
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7}] title {"text":" "}
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17}] title {"text":" "}

title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=8,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=7,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=6,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=5,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=4,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=3,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=2,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=1,repeating=1..7}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=0,repeating=1..7}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=8,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=7,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=6,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=5,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=4,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=3,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=2,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=1,repeating=11..17}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,ca.ind_val=0,repeating=11..17}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]


title @a[tag=!showing_echo,scores={ui_location=1,echo=1..}] times 0 45 5
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..}] times 0 45 5
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..}] title {"text":" "}
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..}] title {"text":" "}

title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=6}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=5}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=4}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=3}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=2}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=1}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_echo,scores={ui_location=1,echo=1..,echo_charges=0}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

scoreboard players set @s ca.ind_val 0

tag @s[scores={echo=1..}] add showing_echo
tag @s[scores={repeating=1..}] add showing_repeating