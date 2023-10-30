data modify storage cartographer_mob_abilities:alchemist effects set value []
data modify storage cartographer_mob_abilities:alchemist effects set from entity @s HandItems[1].tag.custom_potion_effects

data modify storage cartographer_mob_abilities:alchemist Potion set value []
data modify storage cartographer_mob_abilities:alchemist Potion set from entity @s HandItems[1].tag.Potion

data modify storage cartographer_mob_abilities:alchemist Owner set value []
data modify storage cartographer_mob_abilities:alchemist Owner set from entity @s HandItems[1].tag.UUID