
#Reset attack speed and kbr on Echo users
execute as @a[scores={echo=1..,echo_charges=0..}] run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192124 echo_effect_spd 1024 add
execute as @a[scores={echo=1..,echo_charges=..-1}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124
execute as @a[scores={echo=0}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124

execute as @a[scores={echo=1..,echo_charges=1..}] run attribute @s minecraft:generic.knockback_resistance modifier add 5-3-8-15-180504192124 echo_effect_kbr 0.15 add
execute as @a[scores={echo=1..,echo_charges=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124
execute as @a[scores={echo=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124

#Current recharge attack meter
execute as @a[scores={ca.ce.cur_spd=2..}] run attribute @s minecraft:generic.attack_speed modifier add 31-321-1818-514-20 current_effect_spd 1024 add
execute as @a[scores={ca.ce.cur_spd=1}] run attribute @s minecraft:generic.attack_speed modifier remove 31-321-1818-514-20
scoreboard players remove @a[scores={ca.ce.cur_spd=1..}] ca.ce.cur_spd 1

#Apply the attack speed debuff for Evocation.
execute as @a[scores={ca.evo_burn=2..20}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 evo_effect_spd -0.3 multiply
execute as @a[scores={ca.evo_burn=22..40}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 evo_effect_spd -0.5 multiply
execute as @a[scores={ca.evo_burn=42..60}] run attribute @s minecraft:generic.attack_speed modifier add 31-522-15-3120-91514 evo_effect_spd -0.7 multiply

execute as @a[scores={ca.evo_burn=1}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute as @a[scores={ca.evo_burn=21}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514
execute as @a[scores={ca.evo_burn=41}] run attribute @s minecraft:generic.attack_speed modifier remove 31-522-15-3120-91514

scoreboard players remove @a[scores={ca.evo_burn=1..}] ca.evo_burn 1
execute as @a[scores={ca.evo_burn=20}] at @s run scoreboard players set @s ca.evo_burn 0
execute as @a[scores={ca.evo_burn=40}] at @s run scoreboard players set @s ca.evo_burn 0

#Run an inventory calc the tick after using Auto Charge
execute as @a[tag=auto_charge_inv_fix] at @s run function cartographer_custom_enchantments:inventory_changed
tag @a[tag=auto_charge_inv_fix] remove auto_charge_inv_fix

# Triggers for enchants that must attempt every tick.

#Kill trigger
execute as @a[scores={helper_kill=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_killing_mob

#Make ranged attack triggers.
execute as @a[scores={helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute as @a[scores={helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made
execute as @a[scores={helper_trident=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_ranged_attack_made_trident

#Passive Trigger
execute as @a[tag=has_passive_ench] at @s run function cartographer_custom_enchantments:enchant_calls/passively

#Break Spawner Trigger
execute as @a[scores={helper_spawner=1..}] at @s run function cartographer_custom_enchantments:enchant_calls/when_break_spawner

#Player Death Trigger
execute as @a[scores={helper_deathtime=0}] at @s run function cartographer_custom_enchantments:enchant_calls/when_player_dies

#Player Respawn Trigger
execute as @a[scores={helper_deathtime=2..20}] at @s run function cartographer_custom_enchantments:enchant_calls/when_player_respawns

#Custom Projectile Ticks
execute as @e[type=#cartographer_core:arrow,tag=custom_arrow] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_visuals
execute as @e[type=#cartographer_core:arrow,tag=custom_arrow] at @s run function cartographer_custom_enchantments:enchant_effects/arrow_custom_tag
execute as @e[type=trident,tag=custom_trident] at @s run function cartographer_custom_enchantments:enchant_effects/trident_visuals
execute as @e[type=trident,tag=custom_trident] at @s run function cartographer_custom_enchantments:enchant_effects/trident_custom_tag

#Tempo Theft Debuff
execute as @e[type=#cartographer_core:hostile,scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft_effect
execute as @a[scores={ca.temp_warp=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/tempo_theft_effect

#Break Concealed
execute as @a[scores={concealed=0,ca.conceal_time=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/concealed_consume

#Infinity 3.0
execute as @a run function cartographer_custom_enchantments:enchant_effects/infinity/player

#Current Drag Effects
execute as @e[type=#cartographer_core:hostile,tag=current_drag] at @s run function cartographer_custom_enchantments:enchant_effects/current_drag

#Splintering
execute as @a[scores={splintering=1..}] at @s run function cartographer_custom_enchantments:enchant_effects/splintering_branch

#Remove Two Handed Processed Tag - Fix Inventory Two Handed Bundled Items
execute as @a[scores={ca.two_hand_del=1}] at @s run function cartographer_custom_enchantments:enchant_effects/curse_two_handed_return_offhand
execute as @a[scores={curse_two_handed=0},tag=!processed_two_handed] at @s run function cartographer_custom_enchantments:enchant_effects/curse_two_handed_inv_fix
tag @a[tag=processed_two_handed] remove processed_two_handed
scoreboard players remove @a[scores={ca.two_hand_del=1..}] ca.two_hand_del 1

#Remove Auto Charge Processed Tag: Rescan inventory
execute as @a[tag=doing_auto_charge] at @s run tag @s add auto_charge_inv_fix
tag @a[tag=doing_auto_charge] remove doing_auto_charge

#Timers for Adrenaline/Frenzy/Energetic Buffs
execute as @a[scores={ca.adren_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler
execute as @a[scores={ca.frenz_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler
execute as @a[scores={ca.energ_time=1..},tag=!kill_buff_checked] at @s run function cartographer_custom_enchantments:enchant_effects/kill_buff_handler

tag @a remove kill_buff_checked

#Check if a player has a Loyalty Placeholder
execute as @a at @s run function cartographer_custom_enchantments:enchant_effects/loyalty_player_track

#Reset Function for scores
function cartographer_custom_enchantments:loop/tick/reset



# PROJECTILE SCORE UPDATES
scoreboard players add @e[type=trident,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1

scoreboard players add @e[type=armor_stand,tag=hydraul_stopper,scores={helper_lifetime=1..}] helper_lifetime 1

execute as @e[type=arrow,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/process_projectile
execute as @e[type=trident,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:enchant_effects/process_projectile

kill @e[type=armor_stand,tag=hydraul_stopper,scores={helper_lifetime=3..}]
tag @e[tag=bounce] remove bounce

execute as @e[type=trident,tag=loyalty] at @s run execute if entity @s[nbt={inGround:1b}] run function cartographer_custom_enchantments:enchant_effects/loyalty_convert
execute as @e[type=armor_stand,tag=loyalty_projectile] at @s run function cartographer_custom_enchantments:enchant_effects/loyalty_projectile

#Evoker Fangs from Evocation - Kill them if they stay alive too long, and "trample" them, increasing their warmup tags as long as a player stands on it.
execute as @e[type=evoker_fangs,tag=from_evocation] at @s run function cartographer_custom_enchantments:enchant_effects/evocation_purge
execute as @a at @s run execute as @e[type=evoker_fangs,tag=from_evocation,distance=..1.25] at @s run function cartographer_custom_enchantments:enchant_effects/evocation_trample

#Action bar indicators for Repeating and Echo
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:8}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:7}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:6}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:5}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:4}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:3}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:2}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:1}}}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0}}}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:8}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"8","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:7}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"7","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:6}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:5}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:4}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:3}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:2}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:1}}]}] actionbar [{"text":"🏹 <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> 🏹","color":"yellow","italic":false}]
title @a[scores={ui_location=0,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:0}}]}] actionbar [{"text":"🏹 <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> 🏹","color":"red","italic":false}]

title @a[tag=showing_repeating,scores={ui_location=0,repeating=0}] actionbar {"text":" ","color":"yellow","italic":false}

title @a[scores={ui_location=0,echo=1..,echo_charges=6}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"6","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=5}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"5","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=4}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"4","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=3}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"3","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=2}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"2","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=1}] actionbar [{"text":"⚔ <","color":"yellow","italic":false},{"text":"1","color":"green","bold":true,"italic":false},{"text":"> ⚔","color":"yellow","italic":false}]
title @a[scores={ui_location=0,echo=1..,echo_charges=0}] actionbar [{"text":"⚔ <","color":"red","italic":false},{"text":"0","color":"dark_gray","bold":true,"italic":false},{"text":"> ⚔","color":"red","italic":false}]

title @a[tag=showing_echo,scores={ui_location=0,echo=0}] actionbar {"text":" ","color":"yellow","italic":false}


#Subtitle Indicators for Repeating and Echo
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7}] times 0 55 5
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17}] times 0 55 5
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7}] title {"text":" "}
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17}] title {"text":" "}

title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:8}}}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:7}}}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:6}}}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:5}}}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:4}}}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:3}}}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:2}}}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:1}}}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0}}}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]

title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:8}}]}] subtitle [{"text":",","color":"yellow"},{"text":"________","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:7}}]}] subtitle [{"text":",","color":"yellow"},{"text":"_______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:6}}]}] subtitle [{"text":",","color":"yellow"},{"text":"______","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:5}}]}] subtitle [{"text":",","color":"yellow"},{"text":"_____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:4}}]}] subtitle [{"text":",","color":"yellow"},{"text":"____","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:3}}]}] subtitle [{"text":",","color":"yellow"},{"text":"___","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:2}}]}] subtitle [{"text":",","color":"yellow"},{"text":"__","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:1}}]}] subtitle [{"text":",","color":"yellow"},{"text":"_","color":"green","italic":false},{"text":",","color":"yellow"}]
title @a[tag=!showing_repeating,scores={ui_location=1,repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Ammo:0}}]}] subtitle [{"text":",","color":"red"},{"text":".","color":"dark_gray","italic":false},{"text":",","color":"red"}]


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


tag @a[scores={repeating=1..}] add showing_repeating
tag @a[scores={repeating=0}] remove showing_repeating

tag @a[scores={echo=1..}] add showing_echo
tag @a[scores={echo=0}] remove showing_echo

#Just in case
execute as @a run function cartographer_custom_enchantments:calc_enchant/slot_change