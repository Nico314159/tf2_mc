# Functionality obsolete due to existence of tf2:rocket_launcher

execute as @a[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:firework_rocket"}],Enchantments:[{id:"minecraft:multishot"}]}}}] run give @s firework_rocket{Fireworks:{Flight:1,Explosions:[{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]},{Type:0,Flicker:0,Trail:0,Colors:[I;11250603],FadeColors:[I;1973019]}]}} 1
execute as @a[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:firework_rocket"}],Enchantments:[{id:"minecraft:multishot"}]}}}] run item replace entity @s weapon.mainhand with minecraft:crossbow{Enchantments:[{id:"minecraft:multishot",lvl:1}],Unbreakable:1,HideFlags:4} 1