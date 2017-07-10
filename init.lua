local splash

minetest.register_on_joinplayer(function(player)
  minetest.after(0.5, function ()
    overlay = player:hud_add({
      hud_elem_type = "image",
      text = "overlay_diggers.png",
      position = {x=0.5, y=0.5},
      scale = {x=-100, y=-100},
    })
    splash = player:hud_add({
      hud_elem_type = "image",
      text = "header_diggers.png",
      position = {x=0.5, y=0.3},
      scale = {x=4, y=4},
    })
    minetest.sound_play("splash_self_join", { to_player = player, gain = 1.0 })
  end)
  minetest.after(4, function ()
    player:hud_remove(splash)
    player:hud_remove(overlay)
  end)
end)
