execute store result score $lvl ca.unbreaking run data get storage cartographer_custom_enchantments:unbreaking data.tag.CustomEnchantments[{id:"unbreaking"}].lvl
scoreboard players operation $plus ca.unbreaking = $lvl ca.unbreaking
scoreboard players add $plus ca.unbreaking 1

scoreboard players set $rng_min bbl.rng 1
scoreboard players operation $rng_max bbl.rng = $plus ca.unbreaking

function bb:lib/rng

execute if score $value bbl.rng <= $lvl ca.unbreaking run function cartographer_custom_enchantments:enchant_effects/unbreaking/succeed