data modify storage ca.susu:enchants main set value {}
data modify storage ca.susu:enchants main set from entity @s SelectedItem

scoreboard players set $temp ca.susu 0

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"agility"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"aquadynamic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.aquadynamic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"current"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.current += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"fatigue_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.f_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"poison_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.p_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"weakness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.w_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"slowness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.s_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"wither_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.wi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"exposing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.exposing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"concealed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.concealed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"electrode"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.electrode += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"infection"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.infection += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"deadeye"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.deadeye += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"duelist"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.duelist += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"echo"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.echo += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"evocation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.evocation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"eruption"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_spawner ca.enabler run scoreboard players operation @s ca.eruption += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"evasion"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"energetic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.energetic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"executioner"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.executioner += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"flash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"frost"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.frost += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"frostbite"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.frostbite += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"fleetfoot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.fleetfoot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"hunter"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.hunter += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"hydraulic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.hydraulic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"lifesteal"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.lifesteal += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"overcharge"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.overcharge += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"electrocute"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.electrocute += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"expose"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.expose += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"point_blank"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.point_blank += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"possession"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.possession += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"infect"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.infect += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"first_strike"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.first_strike += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"rally"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.rally += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"repeating"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.repeating += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"regeneration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.regen += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"bleed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.bleed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"ricochet"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.ricochet += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"sapper"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_spawner ca.enabler run scoreboard players operation @s ca.sapper += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"satiation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"second_wind"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.second_wind += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"sharpshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.sharpshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"cauterize"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.cauterize += $temp ca.susu
execute if score @s ca.cauterize matches 1.. run scoreboard players set $cu_en_ranged ca.enabler 1

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"singe"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.singe += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"spurs"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.spurs += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"stunning"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.stunning += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"surging_strike"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.surge_strike += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"transfiguration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.transfig += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"tempest"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.tempest += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.tempo_theft += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"trueshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.trueshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"bleeding"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.bleeding += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"possess"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.possess += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"explosive"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.explosive += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"curse_regret"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_regret += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"curse_encumbering"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.curse_encum += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"thorns"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.thorns += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"loyalty"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.loyalty += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.fire_aspect += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:knockback"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.knockback += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:flame"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flame += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.power += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.punch += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.CustomEnchantments[{id:"curse_two_handed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_two_hnd += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.multishot += $temp ca.susu

execute if score $gl_enc_wr ca.gamerule matches 1.. run function cartographer_custom_enchantments:descriptions/write/main

#Also get the ammo of a repeating crossbow in the main or offhand
scoreboard players set @s ca.ammo_main 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants main.tag.Ammo
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.ammo_main += $temp ca.susu

#Check if the custom item is a trident, and auto enable the ranged tag.
execute if data storage ca.susu:enchants main{id:"minecraft:trident"} run scoreboard players set $cu_en_ranged ca.enabler 1

#say test