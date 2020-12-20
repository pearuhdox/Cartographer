

# INFINITY TESTS MUST BE DONE IN THIS FILE INSTEAD

execute as @a[predicate=cartographer_custom_enchantments:infinity/offhand_1] run scoreboard players set @s infinity_o 1
execute as @a[predicate=cartographer_custom_enchantments:infinity/mainhand_1] run scoreboard players set @s infinity_m 1

#Reset attack speed and kbr on Echo users
execute as @a[scores={echo=1..,echo_charges=1..}] run attribute @s minecraft:generic.attack_speed modifier add 5-3-8-15-180504192124 echo_effect_spd 1024 add
execute as @a[scores={echo=1..,echo_charges=0}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124
execute as @a[scores={echo=0}] run attribute @s minecraft:generic.attack_speed modifier remove 5-3-8-15-180504192124

execute as @a[scores={echo=1..,echo_charges=1..}] run attribute @s minecraft:generic.knockback_resistance modifier add 5-3-8-15-180504192124 echo_effect_kbr 10 add
execute as @a[scores={echo=1..,echo_charges=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124
execute as @a[scores={echo=0}] run attribute @s minecraft:generic.knockback_resistance modifier remove 5-3-8-15-180504192124

# ENCHANT EFFECTS THAT MUST ACTIVATE EVERY TICK

execute as @a[scores={adrenaline=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/adrenaline

execute as @a[scores={agility=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/agility

execute as @a[scores={aquadynamic=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/aquadynamic

execute as @a[scores={concealed=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/concealed

execute as @a[scores={s_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={f_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={w_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={p_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing
execute as @a[scores={wi_cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing

execute as @a[scores={energetic=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/energetic

execute as @a[scores={evasion=1..,helper_damaged=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_prime

execute as @a[scores={evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion

execute as @a[scores={evasion=1..,helper_resist=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_trigger

execute as @a[scores={frenzy=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frenzy

execute as @a[scores={lifesteal=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/lifesteal

execute as @a[scores={satiation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/satiation

execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~ sweet_berry_bush run function cartographer_custom_enchantments:loop/enchant_effects/spurs
execute as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~ sweet_berry_bush run function cartographer_custom_enchantments:loop/enchant_effects/spurs

execute as @a[scores={decay=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/decay

execute as @a[scores={duelist=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/duelist

execute as @a[scores={frostbite=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frostbite

execute as @a[scores={committed=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/committed

execute as @a[scores={executioner=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/executioner

execute as @a[scores={hunter=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hunter

execute as @a[scores={vanquisher=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vanquisher

execute as @a[limit=1,scores={repeating=1..7,helper_repeat=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating
execute as @a[limit=1,scores={repeating=11..17,helper_repeat=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating

execute as @a[scores={repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload
execute as @a[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload

execute as @a[scores={repeating=1..7,helper_fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s helper_repeat 3
execute as @a[scores={repeating=11..17,helper_fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s helper_repeat 3

execute as @a[scores={overload=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/overload

execute as @a[scores={vicious=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vicious

execute as @a[scores={stunning=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/stunning

execute as @a[scores={echo=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/echo
execute as @a[scores={helper_kill=1..}] at @s run execute as @a[scores={echo=1..},distance=..12] at @s run function cartographer_custom_enchantments:loop/enchant_effects/echo_restore

execute as @a[scores={surging_strike=1..,helper_deal_dmg=1..,helper_sprint=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/surging_strike

execute as @a[scores={evocation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evocation

execute as @a[scores={transfiguration=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/transfiguration

execute as @a[scores={sapper=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sapper

execute as @a[scores={eruption=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/eruption

execute as @a[scores={splintering=1..,helper_bbarrel=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_boakdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bsprdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bbirdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bjundoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bacadoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bdrkdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bcridoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bwardoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_boaktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bsprtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bbirtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bjuntrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bacatrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bdrktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bcritrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute as @a[scores={splintering=1..,helper_bwartrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows
execute as @a[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows

execute as @a[scores={deadeye=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/deadeye

execute as @a[scores={point_blank=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank
execute as @a[scores={point_blank=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank

execute as @a[scores={sharpshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot
execute as @a[scores={sharpshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot

execute as @a[scores={tempo_theft=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft
execute as @a[scores={tempo_theft=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft

execute as @a[scores={frost=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost
execute as @a[scores={frost=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost

execute as @a[scores={pin_down=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down
execute as @a[scores={pin_down=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down

execute as @a[scores={rend=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend
execute as @a[scores={rend=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend

execute as @a[scores={conductive=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive
execute as @a[scores={conductive=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive

execute as @a[scores={auto_charge=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/auto_charge

execute as @a[scores={current=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/current

execute as @a[scores={hydraulic=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hydraulic

execute as @a[scores={tempest=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempest

execute as @a[scores={ricochet=1..,helper_trident=1..}] at @s run execute as @e[type=trident,limit=1,sort=nearest] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet

execute as @a[scores={trueshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot
execute as @a[scores={trueshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot

execute as @a[scores={volatile=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile
execute as @a[scores={volatile=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile

execute as @a[scores={infinity_m=1}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_handler
execute as @a[scores={infinity_o=1}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_handler

execute as @a[scores={infinity=1..}] at @s run execute positioned ~ -1 ~ run function cartographer_custom_enchantments:loop/enchant_effects/infinity_storing

execute as @a[scores={curse_malevolent=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_malevolence

execute as @a[scores={curse_regret=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_regret

#Commented out, because moved into DE graves.

#execute as @a[scores={helper_deathtime=0}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_shattering

#execute as @a[scores={helper_deathtime=1..2}] at @s run tp @e[type=item,nbt={Item:{tag:{Soulbound:1}}}] @s

#End the Second Wind effect if a player dies. Also reset their tier and remove second wind triggers.
execute as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_cool 181
execute as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_tier 0
execute as @a[scores={helper_deathtime=0}] at @s run tag @s remove bracing
execute as @a[scores={helper_deathtime=0}] at @s run tag @s remove evading


function cartographer_custom_enchantments:loop/tick/reset

# PROJECTILE SCORE UPDATES

scoreboard players add @e[type=arrow,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1
scoreboard players add @e[type=trident,scores={helper_lifetime=1..},nbt=!{inGround:1b}] helper_lifetime 1

scoreboard players add @e[type=armor_stand,tag=hydraul_stopper,scores={helper_lifetime=1..}] helper_lifetime 1

execute as @e[type=arrow,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_projectile
execute as @e[type=trident,scores={helper_lifetime=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/process_projectile

execute as @a at @s run kill @e[type=armor_stand,tag=hydraul_stopper,distance=..3,scores={helper_lifetime=3..}]
tag @e[tag=bounce] remove bounce
execute as @e[type=#cartographer_core:hostile,tag=current_drag] at @s unless entity @e[type=trident,scores={current=1},distance=..5] run tag @s remove current_drag

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

scoreboard players remove @e[scores={ricochet_cool=1..}] ricochet_cool 1

execute as @e[type=armor_stand,tag=ricochet_projectile] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_projectile

schedule function cartographer_custom_enchantments:loop/tick/base 1t