

# INFINITY TESTS MUST BE DONE IN THIS FILE INSTEAD

execute as @a[predicate=cartographer_custom_enchantments:infinity/offhand_1] run scoreboard players set @s infinity 2
execute as @a[predicate=cartographer_custom_enchantments:infinity/mainhand_1] run scoreboard players set @s infinity 1

# ENCHANT EFFECTS THAT MUST ACTIVATE EVERY TICK

execute if entity @a[scores={adrenaline=1..,helper_kill=1..}] as @a[scores={adrenaline=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/adrenaline

execute if entity @a[scores={agility=1..}] as @a[scores={agility=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/agility

execute if entity @a[scores={aquadynamic=1..}] as @a[scores={aquadynamic=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/aquadynamic

execute if entity @a[scores={concealed=1..}] as @a[scores={concealed=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/concealed

execute if entity @a[scores={cleansing=1..}] as @a[scores={cleansing=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/cleansing

execute if entity @a[scores={energetic=1..,helper_kill=1..}] as @a[scores={energetic=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/energetic

execute if entity @a[scores={evasion=1..,helper_damaged=1..}] as @a[scores={evasion=1..,helper_damaged=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_prime

execute if entity @a[scores={evasion=1..},tag=evading] as @a[scores={evasion=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion

execute if entity @a[scores={evasion=1..,helper_resist=1..},tag=evading] as @a[scores={evasion=1..,helper_resist=1..},tag=evading] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evasion_trigger

execute if entity @a[scores={frenzy=1..,helper_kill=1..}] as @a[scores={frenzy=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frenzy

execute if entity @a[scores={lifesteal=1..,helper_kill=1..}] as @a[scores={lifesteal=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/lifesteal

execute if entity @a[scores={satiation=1..,helper_kill=1..}] as @a[scores={satiation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/satiation

execute if entity @a[scores={spurs=1..}] as @a[scores={spurs=1..}] at @s run execute if block ~ ~ ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs
execute if entity @a[scores={spurs=1..}] as @a[scores={spurs=1..}] at @s run execute if block ~ ~1 ~ cobweb run function cartographer_custom_enchantments:loop/enchant_effects/spurs

execute if entity @a[scores={vengeance=1..,helper_damaged=1..}] as @a[scores={vengeance=1..,helper_damaged=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vengeance

execute if entity @a[scores={decay=1..,helper_deal_dmg=1..}] as @a[scores={decay=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/decay

execute if entity @a[scores={duelist=1..,helper_deal_dmg=1..}] as @a[scores={duelist=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/duelist

execute if entity @a[scores={frostbite=1..,helper_deal_dmg=1..}] as @a[scores={frostbite=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frostbite

execute if entity @a[scores={committed=1..,helper_deal_dmg=1..}] as @a[scores={committed=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/committed

execute if entity @a[scores={hunter=1..,helper_deal_dmg=1..}] as @a[scores={hunter=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hunter

execute if entity @a[scores={repeating=1..7,helper_repeat=1},nbt={SelectedItem:{tag:{Charged:0b}}}] as @a[limit=1,scores={repeating=1..7,helper_repeat=1},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating
execute if entity @a[scores={repeating=11..17,helper_repeat=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] as @a[limit=1,scores={repeating=11..17,helper_repeat=1},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating

execute if entity @a[scores={repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] as @a[scores={repeating=1..7},nbt={SelectedItem:{tag:{Ammo:0,Charged:1b}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload
execute if entity @a[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] as @a[scores={repeating=11..17},nbt={Inventory:[{Slot:-106b,tag:{Charged:1b,Ammo:0}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/repeating_reload

execute if entity @a[scores={repeating=1..7,helper_fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] as @a[scores={repeating=1..7,helper_fire_cbow=1..},nbt={SelectedItem:{tag:{Charged:0b}}}] at @s run scoreboard players set @s helper_repeat 3
execute if entity @a[scores={repeating=11..17,helper_fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] as @a[scores={repeating=11..17,helper_fire_cbow=1..},nbt={Inventory:[{Slot:-106b,tag:{Charged:0b}}]}] at @s run scoreboard players set @s helper_repeat 3

execute if entity @a[scores={shocking=1..,helper_deal_dmg=1..}] as @a[scores={shocking=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/shocking

execute if entity @a[scores={vicious=1..,helper_deal_dmg=1..}] as @a[scores={vicious=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/vicious

execute if entity @a[scores={stunning=1..,helper_deal_dmg=1..}] as @a[scores={stunning=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/stunning

execute if entity @a[scores={echo=1..,helper_deal_dmg=1..}] as @a[scores={echo=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/echo

execute if entity @a[scores={surging_strike=1..,helper_sprint=1..,helper_deal_dmg=1..}] as @a[scores={surging_strike=1..,helper_deal_dmg=1..,helper_sprint=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/surging_strike

execute if entity @a[scores={evocation=1..,helper_kill=1..}] as @a[scores={evocation=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/evocation

execute if entity @a[scores={transfiguration=1..,helper_deal_dmg=1..}] as @a[scores={transfiguration=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/transfiguration

execute if entity @a[scores={sapper=1..,helper_spawner=1..}] as @a[scores={sapper=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sapper

execute if entity @a[scores={eruption=1..,helper_spawner=1..}] as @a[scores={eruption=1..,helper_spawner=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/eruption

execute if entity @a[scores={splintering=1..,helper_bbarrel=1..}] as @a[scores={splintering=1..,helper_bbarrel=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_boakdoor=1..}] as @a[scores={splintering=1..,helper_boakdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bsprdoor=1..}] as @a[scores={splintering=1..,helper_bsprdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bbirdoor=1..}] as @a[scores={splintering=1..,helper_bbirdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bjundoor=1..}] as @a[scores={splintering=1..,helper_bjundoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bacadoor=1..}] as @a[scores={splintering=1..,helper_bacadoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bdrkdoor=1..}] as @a[scores={splintering=1..,helper_bdrkdoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bcridoor=1..}] as @a[scores={splintering=1..,helper_bcridoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bwardoor=1..}] as @a[scores={splintering=1..,helper_bwardoor=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_boaktrap=1..}] as @a[scores={splintering=1..,helper_boaktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bsprtrap=1..}] as @a[scores={splintering=1..,helper_bsprtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bbirtrap=1..}] as @a[scores={splintering=1..,helper_bbirtrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bjuntrap=1..}] as @a[scores={splintering=1..,helper_bjuntrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bacatrap=1..}] as @a[scores={splintering=1..,helper_bacatrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bdrktrap=1..}] as @a[scores={splintering=1..,helper_bdrktrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bcritrap=1..}] as @a[scores={splintering=1..,helper_bcritrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering
execute if entity @a[scores={splintering=1..,helper_bwartrap=1..}] as @a[scores={splintering=1..,helper_bwartrap=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/splintering

execute if entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] run execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows
execute if entity @a[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] run execute as @a[nbt={Inventory:[{id:"minecraft:crossbow",Slot:-106b,tag:{Enchantments:[{id:"minecraft:flame",lvl:1s}]}}]}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/flame_crossbows

execute if entity @a[scores={deadeye=1..,helper_fire_cbow=1..}] as @a[scores={deadeye=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/deadeye

execute if entity @a[scores={point_blank=1..,helper_fire_bow=1..}] as @a[scores={point_blank=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank
execute if entity @a[scores={point_blank=1..,helper_fire_cbow=1..}] as @a[scores={point_blank=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/point_blank

execute if entity @a[scores={sharpshot=1..,helper_fire_bow=1..}] as @a[scores={sharpshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot
execute if entity @a[scores={sharpshot=1..,helper_fire_cbow=1..}] as @a[scores={sharpshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot

execute if entity @a[scores={tempo_theft=1..,helper_fire_bow=1..}] as @a[scores={tempo_theft=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft
execute if entity @a[scores={tempo_theft=1..,helper_fire_cbow=1..}] as @a[scores={tempo_theft=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempo_theft

execute if entity @a[scores={frost=1..,helper_fire_bow=1..}] as @a[scores={frost=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost
execute if entity @a[scores={frost=1..,helper_fire_cbow=1..}] as @a[scores={frost=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/frost

execute if entity @a[scores={pin_down=1..,helper_fire_bow=1..}] as @a[scores={pin_down=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down
execute if entity @a[scores={pin_down=1..,helper_fire_cbow=1..}] as @a[scores={pin_down=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/pin_down

execute if entity @a[scores={rend=1..,helper_fire_bow=1..}] as @a[scores={rend=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend
execute if entity @a[scores={rend=1..,helper_fire_cbow=1..}] as @a[scores={rend=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/rend

execute if entity @a[scores={conductive=1..,helper_fire_bow=1..}] as @a[scores={conductive=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive
execute if entity @a[scores={conductive=1..,helper_fire_cbow=1..}] as @a[scores={conductive=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/conductive

execute if entity @a[scores={auto_charge=1..,helper_kill=1..}] as @a[scores={auto_charge=1..,helper_kill=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/auto_charge

execute if entity @a[scores={current=1..,helper_trident=1..}] as @a[scores={current=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/current

execute if entity @a[scores={hydraulic=1..,helper_trident=1..}] as @a[scores={hydraulic=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/hydraulic

execute if entity @a[scores={tempest=1..,helper_trident=1..}] as @a[scores={tempest=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempest

execute if entity @a[scores={ricochet=1..,helper_trident=1..}] as @a[scores={ricochet=1..,helper_trident=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet

execute if entity @a[scores={trueshot=1..,helper_fire_bow=1..}] as @a[scores={trueshot=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot
execute if entity @a[scores={trueshot=1..,helper_fire_cbow=1..}] as @a[scores={trueshot=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/trueshot

execute if entity @a[scores={volatile=1..,helper_fire_bow=1..}] as @a[scores={volatile=1..,helper_fire_bow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile
execute if entity @a[scores={volatile=1..,helper_fire_cbow=1..}] as @a[scores={volatile=1..,helper_fire_cbow=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/volatile

execute if entity @a[tag=infinity_storing,scores={helper_potion=1..}] as @a[tag=infinity_storing,scores={helper_potion=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_splashpot=1..}] as @a[tag=infinity_storing,scores={helper_splashpot=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_lingerpot=1..}] as @a[tag=infinity_storing,scores={helper_lingerpot=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_pearl=1..}] as @a[tag=infinity_storing,scores={helper_pearl=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_eye=1..}] as @a[tag=infinity_storing,scores={helper_eye=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger

execute if entity @a[tag=infinity_storing,scores={helper_bread=1..}] as @a[tag=infinity_storing,scores={helper_bread=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_m_soup=1..}] as @a[tag=infinity_storing,scores={helper_m_soup=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_apple=1..}] as @a[tag=infinity_storing,scores={helper_apple=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_fish=1..}] as @a[tag=infinity_storing,scores={helper_fish=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_fish=1..}] as @a[tag=infinity_storing,scores={helper_c_fish=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger 
execute if entity @a[tag=infinity_storing,scores={helper_salmon=1..}] as @a[tag=infinity_storing,scores={helper_salmon=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_salmon=1..}] as @a[tag=infinity_storing,scores={helper_c_salmon=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_kelp=1..}] as @a[tag=infinity_storing,scores={helper_kelp=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_pork=1..}] as @a[tag=infinity_storing,scores={helper_pork=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_pork=1..}] as @a[tag=infinity_storing,scores={helper_c_pork=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_beef=1..}] as @a[tag=infinity_storing,scores={helper_beef=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_beef=1..}] as @a[tag=infinity_storing,scores={helper_c_beef=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_chicken=1..}] as @a[tag=infinity_storing,scores={helper_chicken=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_chicken=1..}] as @a[tag=infinity_storing,scores={helper_c_chicken=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_mutton=1..}] as @a[tag=infinity_storing,scores={helper_mutton=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_mutton=1..}] as @a[tag=infinity_storing,scores={helper_c_mutton=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_rabbit=1..}] as @a[tag=infinity_storing,scores={helper_rabbit=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_rabbit=1..}] as @a[tag=infinity_storing,scores={helper_c_rabbit=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_cookie=1..}] as @a[tag=infinity_storing,scores={helper_cookie=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_melon=1..}] as @a[tag=infinity_storing,scores={helper_melon=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_pie=1..}] as @a[tag=infinity_storing,scores={helper_pie=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_carrot=1..}] as @a[tag=infinity_storing,scores={helper_carrot=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_g_carrot=1..}] as @a[tag=infinity_storing,scores={helper_g_carrot=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_p_potato=1..}] as @a[tag=infinity_storing,scores={helper_p_potato=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_potato=1..}] as @a[tag=infinity_storing,scores={helper_potato=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_c_potato=1..}] as @a[tag=infinity_storing,scores={helper_c_potato=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_chorus=1..}] as @a[tag=infinity_storing,scores={helper_chorus=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_beet=1..}] as @a[tag=infinity_storing,scores={helper_beet=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_b_soup=1..}] as @a[tag=infinity_storing,scores={helper_b_soup=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_r_soup=1..}] as @a[tag=infinity_storing,scores={helper_r_soup=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_flesh=1..}] as @a[tag=infinity_storing,scores={helper_flesh=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_s_eye=1..}] as @a[tag=infinity_storing,scores={helper_s_eye=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_honey=1..}] as @a[tag=infinity_storing,scores={helper_honey=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger
execute if entity @a[tag=infinity_storing,scores={helper_milk=1..}] as @a[tag=infinity_storing,scores={helper_milk=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_trigger

execute if entity @a[tag=infinity_storing] as @a[tag=infinity_storing] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity

execute if entity @a[scores={infinity=0}] as @a[scores={infinity=0}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_clear

execute if entity @a[scores={infinity=1..,helper_inf_cool=0},tag=!infinity_storing] as @a[scores={infinity=1..,helper_inf_cool=0},tag=!infinity_storing] at @s run function cartographer_custom_enchantments:loop/enchant_effects/infinity_store

execute if entity @a[scores={curse_malevolent=2..}] as @a[scores={curse_malevolent=2..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_malevolence

execute if entity @a[scores={curse_regret=1..,helper_deal_dmg=1..}] as @a[scores={curse_regret=1..,helper_deal_dmg=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_regret

execute if entity @a[scores={helper_deathtime=0}] as @a[scores={helper_deathtime=0}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/curse_shattering

execute if entity @a[scores={helper_deathtime=1..2}] as @a[scores={helper_deathtime=1..2}] at @s run tp @e[type=item,nbt={Item:{tag:{Soulbound:1}}}] @s

#End the Second Wind effect if a player dies. Also reset their tier.
execute if entity @a[scores={helper_deathtime=0}] as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_cool 181
execute if entity @a[scores={helper_deathtime=0}] as @a[scores={helper_deathtime=0}] at @s run scoreboard players set @s second_wind_tier 0

function cartographer_custom_enchantments:loop/tick/reset


# PROJECTILE SCORE UPDATES

scoreboard players add @e[scores={helper_lifetime=1..},type=arrow,nbt=!{inGround:1b}] helper_lifetime 1
scoreboard players add @e[scores={helper_lifetime=1..},type=armor_stand,tag=hydraul_stopper] helper_lifetime 1
execute as @e[type=arrow,scores={point_blank=1..,helper_lifetime=2..}] run function cartographer_custom_enchantments:loop/enchant_effects/point_blank_arrow
execute as @e[type=trident,scores={tempest=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/tempest_trident
execute as @e[type=trident,scores={ricochet=1..}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/ricochet_trident
execute as @e[type=arrow,scores={sharpshot=1..,helper_lifetime=2..}] run function cartographer_custom_enchantments:loop/enchant_effects/sharpshot_arrow
execute as @e[type=trident,scores={current=1}] at @s run function cartographer_custom_enchantments:loop/enchant_effects/current_trident

execute as @e[type=arrow,scores={helper_lifetime=1..},nbt={inGround:1b,CustomPotionEffects:[{Id:30b}]},tag=effect_arrow] at @s run function cartographer_custom_enchantments:loop/enchant_effects/effect_arrow_volatile
execute as @e[type=arrow,scores={helper_lifetime=1..},nbt={inGround:1b},tag=effect_arrow] run function cartographer_custom_enchantments:loop/enchant_effects/effect_arrow_break

kill @e[tag=hydraul_stopper,type=armor_stand,scores={helper_lifetime=3..}]
tag @e[tag=bounce] remove bounce
execute as @e[tag=current_drag] at @s run execute unless entity @e[type=trident,scores={current=1},distance=..5] run tag @s remove current_drag


schedule function cartographer_custom_enchantments:loop/tick/base 1t