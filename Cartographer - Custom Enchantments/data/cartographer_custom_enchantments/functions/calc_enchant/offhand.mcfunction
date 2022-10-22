
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"agility"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"aquadynamic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.aquadynamic += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"current"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.current += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"fatigue_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.f_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"poison_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.p_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"weakness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.w_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"slowness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.s_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"wither_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.wi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"concealed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.concealed += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"electrode"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.electrode += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"deadeye"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.deadeye += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"evasion"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"energetic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.energetic += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"flash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flash += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"fleetfoot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.fleetfoot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.frenzy += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"frost"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.frost += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"hydraulic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.hydraulic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"lifesteal"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.lifesteal += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"overcharge"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.overcharge += $temp ca.susu

execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"expose"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.expose += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"point_blank"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.point_blank += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"infect"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.infect += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"possess"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.possess += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"rally"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.rally += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"repeating"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players add $temp ca.susu 10
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.repeating += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"regeneration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.regen += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"bleed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.bleed += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"ricochet"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.ricochet += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"satiation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"second_wind"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.second_wind += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"sharpshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.sharpshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"cauterize"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.cauterize += $temp ca.susu
execute if score @s ca.cauterize matches 1.. run scoreboard players set $cu_en_ranged ca.enabler 1

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"splintering"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.splintering += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"spurs"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.spurs += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"tempest"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.tempest += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.tempo_theft += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"trueshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.trueshot += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"explosive"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.explosive += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"recoil"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.recoil += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"collapse"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.collapse += $temp ca.susu


scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_encumbering"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.curse_encum += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"wavedash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.wavedash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"thorns"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.thorns += $temp ca.susu

#duelist
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"duelist"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_duelist += $temp ca.susu
#hunter
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"hunter"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_hunter += $temp ca.susu
#singe
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"singe"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_singe += $temp ca.susu
#frostbite
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"frostbite"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_frostbite += $temp ca.susu
#exposing
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"exposing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_exposing += $temp ca.susu
#stunning
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"stunning"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_stunning += $temp ca.susu
#infection
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"infection"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_infection += $temp ca.susu
#electrocute
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"electrocute"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_electrocute += $temp ca.susu
#bleeding
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"bleeding"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_bleeding += $temp ca.susu
#fire_aspect
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_fire_aspect += $temp ca.susu
#possession
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"possession"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_possession += $temp ca.susu
#executioenr
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"executioner"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_executioner += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"loyalty"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.loyalty += $temp ca.susu
execute if score $temp ca.susu matches 1.. run scoreboard players add @s ca.loyalty 100

# I don't think I need this... Right? Right?
#execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
#scoreboard players operation @s ca.fire_aspect += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:flame"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flame += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.power += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.punch += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless predicate cartographer_custom_enchantments:hold_ranged_weapon store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.multishot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:swift_sneak"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.swift_sneak += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:soul_speed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.soul_speed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:frost_walker"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.frost_walker += $temp ca.susu

#Also get the ammo of a repeating crossbow in the main or offhand
scoreboard players set @s ca.ammo_off 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Ammo
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.ammo_off += $temp ca.susu
