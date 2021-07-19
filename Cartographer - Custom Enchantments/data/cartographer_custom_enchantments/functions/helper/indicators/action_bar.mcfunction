data modify storage ca.indicator Ammo set value 0

execute if score @s ca.repeating matches 1..7 run data modify storage ca.indicator Ammo set from entity @s SelectedItem.tag.Ammo
execute if score @s ca.repeating matches 11..17 run data modify storage ca.indicator Ammo set from entity @s Inventory[{Slot:-106b}].tag.Ammo
execute store result score @s ca.ind_val run data get storage ca.indicator Ammo


title @s[scores={ca.ind_val=8,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=7,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=6,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=5,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=4,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=3,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=2,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=1,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=0,ca.repeating=1..7}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @s[scores={ca.ind_val=8,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=7,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=6,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=5,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=4,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=3,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=2,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=1,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @s[scores={ca.ind_val=0,ca.repeating=11..17}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @s[tag=showing_repeating,scores={ca.repeating=0}] actionbar {"text":" ","color":"yellow","italic":false}

title @s[scores={ca.echo=1..,ca.echo_charges=6}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=5}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=4}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=3}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=2}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=1}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @s[scores={ca.echo=1..,ca.echo_charges=0}] actionbar [{"text":"⚔ <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> ⚔","color":"red","italic":false}]

title @s[tag=showing_echo,scores={ca.echo=0}] actionbar {"text":" ","color":"yellow","italic":false}

scoreboard players set @s ca.ind_val 0

tag @s[scores={ca.echo=1..}] add showing_echo
tag @s[scores={ca.repeating=1..}] add showing_repeating

title @s[scores={ca.sw_time=181..}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"09 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=161..180}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"08 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=141..160}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"07 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=121..140}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"06 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=101..120}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"05 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=81..100}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"04 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=61..80}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"03 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=41..60}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"02 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
title @s[scores={ca.sw_time=21..40}] actionbar [{"text":"☠ ","color":"dark_green","italic":false},{"text":"< ","color":"green","bold":true},{"text":"00","color":"yellow","bold":false,"italic":false},{"text":":","color":"green","bold":true,"italic":false},{"text":"01 ","color":"yellow","bold":false,"italic":false},{"text":">","color":"green","bold":true,"italic":false},{"text":" ☠"}]
