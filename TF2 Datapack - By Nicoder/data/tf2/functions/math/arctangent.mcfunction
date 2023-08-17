scoreboard players set $quadrant_X tf2.var 1
execute if score $input_X tf2.var matches ..-1 run scoreboard players set $quadrant_X tf2.var -1
execute if score $input_X tf2.var matches ..-1 run scoreboard players operation $input_X tf2.var *= -1 tf2.const
scoreboard players set $quadrant_Y tf2.var 1
execute if score $input_Y tf2.var matches ..-1 run scoreboard players set $quadrant_Y tf2.var -1
execute if score $input_Y tf2.var matches ..-1 run scoreboard players operation $input_Y tf2.var *= -1 tf2.const
scoreboard players set $arctangent_swap_boolean tf2.var 0
execute if score $input_X tf2.var < $input_Y tf2.var run scoreboard players set $arctangent_swap_boolean tf2.var 1
execute if score $input_X tf2.var < $input_Y tf2.var run scoreboard players operation $input_X tf2.var >< $input_Y tf2.var
scoreboard players operation $math_trigonometry_0 tf2.var = $input_Y tf2.var
scoreboard players operation $math_trigonometry_0 tf2.var *= 1000 tf2.const
scoreboard players operation $math_trigonometry_0 tf2.var /= $input_X tf2.var
scoreboard players operation $math_trigonometry_1 tf2.var = $math_trigonometry_0 tf2.var
scoreboard players operation $math_trigonometry_0 tf2.var *= $math_trigonometry_0 tf2.var
scoreboard players operation $math_trigonometry_0 tf2.var /= 1000 tf2.const
scoreboard players set $math_trigonometry_2 tf2.var 776
scoreboard players set $math_trigonometry_3 tf2.var -2874
scoreboard players set $math_trigonometry_4 tf2.var 9951
scoreboard players operation $math_trigonometry_4 tf2.var *= $math_trigonometry_1 tf2.var
scoreboard players operation $math_trigonometry_4 tf2.var /= 10000 tf2.const
scoreboard players operation $math_trigonometry_1 tf2.var *= $math_trigonometry_0 tf2.var
scoreboard players operation $math_trigonometry_1 tf2.var /= 1000 tf2.const
scoreboard players operation $math_trigonometry_3 tf2.var *= $math_trigonometry_1 tf2.var
scoreboard players operation $math_trigonometry_3 tf2.var /= 10000 tf2.const
scoreboard players operation $math_trigonometry_1 tf2.var *= $math_trigonometry_0 tf2.var
scoreboard players operation $math_trigonometry_1 tf2.var /= 1000 tf2.const
scoreboard players operation $math_trigonometry_2 tf2.var *= $math_trigonometry_1 tf2.var
scoreboard players operation $math_trigonometry_2 tf2.var /= 10000 tf2.const
scoreboard players operation $output tf2.var = $math_trigonometry_2 tf2.var
scoreboard players operation $output tf2.var += $math_trigonometry_3 tf2.var
scoreboard players operation $output tf2.var += $math_trigonometry_4 tf2.var
scoreboard players operation $output tf2.var *= 900 tf2.const
scoreboard players operation $output tf2.var /= 1570 tf2.const
execute if score $arctangent_swap_boolean tf2.var matches 1.. run scoreboard players operation $output tf2.var *= -1 tf2.const
execute if score $arctangent_swap_boolean tf2.var matches 1.. run scoreboard players add $output tf2.var 900
execute if score $quadrant_X tf2.var matches -1 if score $quadrant_Y tf2.var matches -1 run scoreboard players remove $output tf2.var 1800
execute if score $quadrant_X tf2.var matches -1 if score $quadrant_Y tf2.var matches 1 run scoreboard players operation $output tf2.var *= -1 tf2.const
execute if score $quadrant_X tf2.var matches -1 if score $quadrant_Y tf2.var matches 1 run scoreboard players add $output tf2.var 1800
execute if score $quadrant_X tf2.var matches 1 if score $quadrant_Y tf2.var matches -1 run scoreboard players operation $output tf2.var *= -1 tf2.const