execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"adrenaline"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.adrenaline += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"agility"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.agility += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"aquadynamic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.aquadynamic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"fatigue_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.f_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"poison_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.p_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"weakness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.w_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"slowness_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.s_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"wither_cleansing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.wi_cleansing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"cauterize"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.cauterize += $temp ca.susu
execute if score @s ca.cauterize matches 1.. run scoreboard players set $cu_en_ranged ca.enabler 1

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"concealed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.concealed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"evasion"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.evasion += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"energetic"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.energetic += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"frenzy"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.frenzy += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"lifesteal"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_kill ca.enabler run scoreboard players operation @s ca.lifesteal += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"rally"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.rally += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"regeneration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.regen += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"satiation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.satiation += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"second_wind"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.second_wind += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"spurs"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.spurs += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"thorns"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.thorns += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_thorns_legs

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"resourceful"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.resourceful += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"gravity"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.gravity += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_gravity_legs

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"momentum"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.momentum += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_momentum_legs

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"quake"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.quake += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_quake_legs

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"smite"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.smite += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.ce_smite_legs


execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"confidence"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.confidence += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.check_hp_percent

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"desperation"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.desperation += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.check_hp_percent

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"stalwart"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.stalwart += $temp ca.susu
execute if score $temp ca.susu matches 1.. run tag @s add ca.check_hp_percent

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"shielding"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.shielding += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"sprint_dash"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.sprint_dash += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"disengage"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.disengage += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"curse_regret"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_regret += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"curse_clumsiness"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_clumsiness += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"curse_flammability"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_flammability += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"curse_jinxing"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_jinxing += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"curse_drowning"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.curse_drowning += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:respiration"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.respiration += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:swift_sneak"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.swift_sneak += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:soul_speed"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.soul_speed += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.Enchantments[{id:"minecraft:frost_walker"}].lvl
execute if score $temp ca.susu matches 1.. store result score $cu_en_passive ca.enabler run scoreboard players operation @s ca.frost_walker += $temp ca.susu

execute store result score $temp ca.susu run data get storage ca.susu:enchants legs.tag.CustomEnchantments[{id:"unbreaking"}].lvl
execute if score $temp ca.susu matches 1.. run tag @s add ca.unb_legs