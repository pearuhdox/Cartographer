
#Setup all necessary scoreboard commands.

scoreboard objectives add adrenaline dummy
scoreboard objectives add agility dummy
scoreboard objectives add aquadynamic dummy
scoreboard objectives add auto_charge dummy
scoreboard objectives add s_cleansing dummy
scoreboard objectives add f_cleansing dummy
scoreboard objectives add w_cleansing dummy
scoreboard objectives add p_cleansing dummy
scoreboard objectives add wi_cleansing dummy
scoreboard objectives add committed dummy
scoreboard objectives add concealed dummy
scoreboard objectives add conductive dummy
scoreboard objectives add current dummy
scoreboard objectives add decay dummy
scoreboard objectives add deadeye dummy
scoreboard objectives add despair_wave dummy
scoreboard objectives add destruction_wave dummy
scoreboard objectives add duelist dummy
scoreboard objectives add echo dummy
scoreboard objectives add evocation dummy
scoreboard objectives add energetic dummy
scoreboard objectives add eruption dummy
scoreboard objectives add evasion dummy
scoreboard objectives add executioner dummy
scoreboard objectives add frenzy dummy
scoreboard objectives add frost dummy
scoreboard objectives add frostbite dummy
scoreboard objectives add hunter dummy
scoreboard objectives add hydraulic dummy
scoreboard objectives add infinity_m dummy
scoreboard objectives add infinity_o dummy
scoreboard objectives add lifesteal dummy
scoreboard objectives add pin_down dummy
scoreboard objectives add point_blank dummy
scoreboard objectives add vanquisher dummy
scoreboard objectives add repeating dummy
scoreboard objectives add regeneration dummy
scoreboard objectives add rend dummy
scoreboard objectives add ricochet dummy
scoreboard objectives add sapper dummy
scoreboard objectives add satiation dummy
scoreboard objectives add second_wind dummy
scoreboard objectives add sharpshot dummy
scoreboard objectives add overload dummy
scoreboard objectives add splintering dummy
scoreboard objectives add spurs dummy
scoreboard objectives add stunning dummy
scoreboard objectives add surging_strike dummy
scoreboard objectives add transfiguration dummy
scoreboard objectives add tempest dummy
scoreboard objectives add tempo_theft dummy
scoreboard objectives add trueshot dummy
scoreboard objectives add unbreakable dummy
scoreboard objectives add vengeance dummy
scoreboard objectives add vicious dummy
scoreboard objectives add volatile dummy


#infernal

scoreboard objectives add curse_malevolent dummy
scoreboard objectives add curse_regret dummy
scoreboard objectives add curse_two_handed dummy

#Setup evasion bias score.
scoreboard objectives add evasion_bias dummy

#Setup dummy player score for Second Wind calculations.
scoreboard players set SecondWindHelper second_wind 10

#Setup Second Wind cooldown timer and bank.
scoreboard objectives add second_wind_cool dummy
scoreboard objectives add second_wind_test dummy
scoreboard objectives add second_wind_save dummy
scoreboard objectives add second_wind_kill totalKillCount
scoreboard objectives add second_wind_abso dummy
scoreboard objectives add second_wind_tier dummy

#Setup all necessary helper scoreboards.

scoreboard objectives add player_health health

scoreboard objectives add helper_tempo dummy
scoreboard objectives add helper_repeat dummy
scoreboard objectives add helper_health dummy
scoreboard objectives add helper_kill totalKillCount
scoreboard objectives add helper_evade dummy
scoreboard objectives add helper_damaged minecraft.custom:minecraft.damage_taken
scoreboard objectives add helper_resist minecraft.custom:minecraft.damage_resisted
scoreboard objectives add helper_heal_bank dummy
scoreboard objectives add helper_deal_dmg minecraft.custom:minecraft.damage_dealt
scoreboard objectives add helper_stun_show dummy
scoreboard objectives add helper_melee dummy
scoreboard objectives add helper_spawner minecraft.mined:minecraft.spawner
scoreboard objectives add helper_lifetime dummy
scoreboard objectives add helper_deathtime minecraft.custom:minecraft.time_since_death
scoreboard objectives add helper_sprint minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add helper_echo dummy
scoreboard objectives add echo_charges dummy
scoreboard objectives add ricochet_cool dummy

scoreboard objectives add helper_exec_low dummy
scoreboard objectives add helper_exec_max dummy

scoreboard objectives add helper_fire_bow minecraft.used:minecraft.bow
scoreboard objectives add helper_fire_cbow minecraft.used:minecraft.crossbow
scoreboard objectives add helper_arrow_dmg dummy
scoreboard objectives add helper_trident minecraft.used:minecraft.trident

scoreboard objectives add helper_bbarrel minecraft.mined:minecraft.barrel
scoreboard objectives add helper_boakdoor minecraft.mined:minecraft.oak_door
scoreboard objectives add helper_bsprdoor minecraft.mined:minecraft.spruce_door
scoreboard objectives add helper_bbirdoor minecraft.mined:minecraft.birch_door
scoreboard objectives add helper_bjundoor minecraft.mined:minecraft.jungle_door
scoreboard objectives add helper_bacadoor minecraft.mined:minecraft.acacia_door
scoreboard objectives add helper_bdrkdoor minecraft.mined:minecraft.dark_oak_door
scoreboard objectives add helper_bcridoor minecraft.mined:minecraft.crimson_door
scoreboard objectives add helper_bwardoor minecraft.mined:minecraft.warped_door
scoreboard objectives add helper_boaktrap minecraft.mined:minecraft.oak_trapdoor
scoreboard objectives add helper_bsprtrap minecraft.mined:minecraft.spruce_trapdoor
scoreboard objectives add helper_bbirtrap minecraft.mined:minecraft.birch_trapdoor
scoreboard objectives add helper_bjuntrap minecraft.mined:minecraft.jungle_trapdoor
scoreboard objectives add helper_bacatrap minecraft.mined:minecraft.acacia_trapdoor
scoreboard objectives add helper_bdrktrap minecraft.mined:minecraft.dark_oak_trapdoor
scoreboard objectives add helper_bcritrap minecraft.mined:minecraft.crimson_trapdoor
scoreboard objectives add helper_bwartrap minecraft.mined:minecraft.warped_trapdoor


scoreboard objectives add helper_splashpot minecraft.used:minecraft.splash_potion
scoreboard objectives add helper_lingerpot minecraft.used:minecraft.lingering_potion
scoreboard objectives add helper_potion minecraft.used:minecraft.potion
scoreboard objectives add helper_pearl minecraft.used:minecraft.ender_pearl
scoreboard objectives add helper_eye minecraft.used:minecraft.ender_eye

scoreboard objectives add helper_bread minecraft.used:minecraft.bread
scoreboard objectives add helper_m_soup minecraft.used:minecraft.mushroom_stew
scoreboard objectives add helper_apple minecraft.used:minecraft.apple
scoreboard objectives add helper_g_apple minecraft.used:minecraft.golden_apple
scoreboard objectives add helper_eg_apple minecraft.used:minecraft.enchanted_golden_apple
scoreboard objectives add helper_fish minecraft.used:minecraft.cod
scoreboard objectives add helper_c_fish minecraft.used:minecraft.cooked_cod
scoreboard objectives add helper_salmon minecraft.used:minecraft.salmon
scoreboard objectives add helper_c_salmon minecraft.used:minecraft.cooked_salmon
scoreboard objectives add helper_kelp minecraft.used:minecraft.dried_kelp
scoreboard objectives add helper_pork minecraft.used:minecraft.porkchop
scoreboard objectives add helper_c_pork minecraft.used:minecraft.cooked_porkchop
scoreboard objectives add helper_beef minecraft.used:minecraft.beef
scoreboard objectives add helper_c_beef minecraft.used:minecraft.cooked_beef
scoreboard objectives add helper_chicken minecraft.used:minecraft.chicken
scoreboard objectives add helper_c_chicken minecraft.used:minecraft.cooked_chicken
scoreboard objectives add helper_mutton minecraft.used:minecraft.mutton
scoreboard objectives add helper_c_mutton minecraft.used:minecraft.cooked_mutton
scoreboard objectives add helper_rabbit minecraft.used:minecraft.rabbit
scoreboard objectives add helper_c_rabbit minecraft.used:minecraft.cooked_rabbit
scoreboard objectives add helper_cookie minecraft.used:minecraft.cookie
scoreboard objectives add helper_melon minecraft.used:minecraft.melon_slice
scoreboard objectives add helper_pie minecraft.used:minecraft.pumpkin_pie
scoreboard objectives add helper_carrot minecraft.used:minecraft.carrot
scoreboard objectives add helper_g_carrot minecraft.used:minecraft.golden_carrot
scoreboard objectives add helper_p_potato minecraft.used:minecraft.poisonous_potato
scoreboard objectives add helper_potato minecraft.used:minecraft.potato
scoreboard objectives add helper_c_potato minecraft.used:minecraft.baked_potato
scoreboard objectives add helper_chorus minecraft.used:minecraft.chorus_fruit
scoreboard objectives add helper_beet minecraft.used:minecraft.beetroot
scoreboard objectives add helper_b_soup minecraft.used:minecraft.beetroot_soup
scoreboard objectives add helper_r_soup minecraft.used:minecraft.rabbit_stew
scoreboard objectives add helper_flesh minecraft.used:minecraft.rotten_flesh
scoreboard objectives add helper_s_eye minecraft.used:minecraft.spider_eye
scoreboard objectives add helper_honey minecraft.used:minecraft.honey_bottle
scoreboard objectives add helper_milk minecraft.used:minecraft.milk_bucket

scoreboard objectives add ui_location dummy

#Place extra shulker boxes for Custom Enchantments

#Auto Charge
setblock 4206901 0 4206900 purple_shulker_box replace

#Repeating
setblock 4206900 0 4206901 purple_shulker_box replace

#Infinity Mainhand
setblock 4206899 0 4206900 purple_shulker_box replace

#Infinity Offhand
setblock 4206900 0 4206899 purple_shulker_box replace

#Start the initial run to calculate what custom enchantments the player has.
function cartographer_custom_enchantments:loop/calc_enchant/base

#Start initial required looping to trigger enchant effects. Offset 1 second effects by 30 ticks.
function cartographer_custom_enchantments:loop/tick/base
schedule function cartographer_custom_enchantments:loop/1_second/base 30t
schedule function cartographer_custom_enchantments:loop/3_second/base 30t