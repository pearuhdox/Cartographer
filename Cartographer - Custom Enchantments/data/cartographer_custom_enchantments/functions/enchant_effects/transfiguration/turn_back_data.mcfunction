data remove storage cartographer_custom_enchantments:transfiguration data.Motion

data modify entity @s {} merge from storage cartographer_custom_enchantments:transfiguration data

function cartographer_core:helper/unregister_ehid

tag @s add ca.was_transfigured
tag @s add ca.checked_transfig