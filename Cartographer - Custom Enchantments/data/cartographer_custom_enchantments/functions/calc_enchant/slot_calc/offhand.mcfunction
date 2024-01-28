
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"agility"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"aquadynamic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.aquadynamic += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"current"}].lvl
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

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"fire_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.fi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"concealed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.concealed += $temp ca.susu



execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"evasion"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"energetic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.energetic += $temp ca.susu


scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged_t ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"fleetfoot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.fleetfoot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"lifeblood"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.lifeblood += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged_ ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"frost"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.frost += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"hydraulic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.hydraulic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"lifesteal"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.lifesteal += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_bow ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"overcharge"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.overcharge += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_bow ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"focus"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.focus += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"concentration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.concentration += $temp ca.susu

execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"exposed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.expose += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"point_blank"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.point_blank += $temp ca.susu


execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"gravity"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.gravity += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_gravity_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"momentum"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.momentum += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_momentum_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"quake"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.quake += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_quake_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"starfall"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.starfall += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_starfall_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"deadeye"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.deadeye += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_deadeye_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"stalwart"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.stalwart += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.check_hp_percent

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"poise"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.poise += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.check_hp_percent

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"shielding"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.shielding += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"sprint_dash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.sprint_dash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"disengage"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.disengage += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"rally"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.rally += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_crossbow ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"repeating"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players add $temp ca.susu 10
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.repeating += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"regeneration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.regen += $temp ca.susu


scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"ricochet"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.ricochet += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"satiation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"second_wind"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.second_wind += $temp ca.susu



scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"sharpshot"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.sharpshot += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"splintering"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.splintering += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"spurs"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.spurs += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"riptide"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.riptide += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"shrapnel"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.shrapnel += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_recoil ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"recoil"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.recoil += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"collapse"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.collapse += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_clumsiness"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_clumsiness += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_flammability"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_flammability += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_jinxing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_jinxing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_drowning"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_drowning += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_regret"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_regret += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"curse_misfortune"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_misfortune_off += $temp ca.susu


scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"wavedash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.wavedash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"thorns"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.thorns += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_thorns_offh

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"resourceful"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.resourceful += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_crossbow ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"repulsion"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.repulsion += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_repulsion_offh



execute unless score $hold_ranged_m ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"cauterize"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_cauterize += $temp ca.susu
execute if score @s ca.off_cauterize matches 1.. run scoreboard players set $cu_en_ranged ca.enabler 1

execute unless score $hold_ranged_m ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"first_strike"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_melee ca.enabler run scoreboard players operation @s ca.off_first_strike += $temp ca.susu

execute unless score $hold_ranged_m ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"hex_eater"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.off_hex_eater += $temp ca.susu

execute unless score $hold_ranged_m ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"executioner"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_executioner += $temp ca.susu

execute unless score $hold_ranged_m ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"tempo_theft"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.off_tempo_theft += $temp ca.susu


#duelist
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"duelist"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_duelist += $temp ca.susu
#hunter
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"hunter"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_hunter += $temp ca.susu
#smite
execute if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:smite"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.off_smite += $temp ca.susu


#fire_aspect
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:fire_aspect"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.off_fire_aspect += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_trident ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomEnchantments[{id:"loyalty"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.loyalty += $temp ca.susu
execute if score $temp ca.susu matches 1.. run scoreboard players add @s ca.loyalty 100


scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:flame"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.flame += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:power"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.power += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:punch"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_ranged ca.enabler run scoreboard players operation @s ca.punch += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged_t ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:multishot"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.multishot += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute unless score $hold_ranged_m ca.ench_var matches 1.. if score $hold_ranged ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:piercing"}].lvl
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.piercing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:swift_sneak"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.swift_sneak += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:soul_speed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.soul_speed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Enchantments[{id:"minecraft:frost_walker"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.frost_walker += $temp ca.susu


scoreboard players set $temp ca.susu 0
execute if score $hold_ranged_t ca.ench_var matches 1.. store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.BlockArrowEnchants
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.ignore_arrow_ench += $temp ca.susu


# Custom Ranged Attribute - Value is always multiplied by 10
scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"ranged_flat"}].amount 10
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.attr_ranged += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"ranged_percent"}].amount 100
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_ranged_perc += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"ranged_speed"}].amount 100
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_ranged_speed += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"potion_size"}].amount 10
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_potion_size += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"luck"}].amount 10
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_luck += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"random_crit"}].amount 100
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_random_crit += $temp ca.susu

scoreboard players set $temp ca.susu 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.CustomAttributes[{id:"aoe_size"}].amount 100
execute unless score $temp ca.susu matches 0 run scoreboard players operation @s ca.attr_aoe_size += $temp ca.susu

#Also get the ammo of a repeating crossbow in the main or offhand
scoreboard players set @s ca.ammo_off 0
execute store result score $temp ca.susu run data get storage ca.susu:enchants offh.tag.Ammo
execute if score $temp ca.susu matches 1.. run scoreboard players operation @s ca.ammo_off += $temp ca.susu
