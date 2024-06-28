item replace entity @s armor.chest with elytra[enchantment_glint_override=false,enchantments={"binding_curse":1}]
execute store result score $_count_ tf2.var run clear @s elytra 0
execute unless score $_count_ tf2.var matches 1 run clear @s elytra
execute unless score $_count_ tf2.var matches 1 run item replace entity @s armor.chest with elytra[enchantment_glint_override=false,enchantments={"binding_curse":1}]