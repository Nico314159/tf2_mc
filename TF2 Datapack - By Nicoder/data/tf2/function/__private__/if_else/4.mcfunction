item replace entity @s armor.chest with iron_chestplate[enchantment_glint_override=false,enchantments={"binding_curse":1},glider={}]
execute store result score $_count_ tf2.var run clear @s iron_chestplate 0
execute unless score $_count_ tf2.var matches 1 run clear @s iron_chestplate
execute unless score $_count_ tf2.var matches 1 run item replace entity @s armor.chest with iron_chestplate[enchantment_glint_override=false,enchantments={"binding_curse":1},glider={}]