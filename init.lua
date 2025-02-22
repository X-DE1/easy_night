local mob_difficulty2 = tonumber(minetest.settings:get("mob_difficulty2") or 0.7)
local mob_chance_multiplier2 = tonumber(minetest.settings:get("mob_chance_multiplier2") or 0.001)
local hudbars_bar_type2 = minetest.settings:get("hudbars_bar_type2") or "statbar_modern"
local letter = minetest.settings:get_bool("letter") or false
local auto_eat_fast = minetest.settings:get_bool("auto_eat_fast") ~= false
local eat_fast = minetest.settings:get_bool("eat_fast") or false
local lava_orb = minetest.settings:get_bool("lava_orb") or false
local lasso = minetest.settings:get_bool("lasso") or false
local saddle = minetest.settings:get_bool("saddle") or false
local pick_lava = minetest.settings:get_bool("pick_lava") or false
local net = minetest.settings:get_bool("net") or false
local nametag = minetest.settings:get_bool("nametag") or false
local leather = minetest.settings:get_bool("leather") or false
local shears = minetest.settings:get_bool("fence_wood") or false
local fence_wood = minetest.settings:get_bool("lava_orb") or false
local fence_top = minetest.settings:get_bool("fence_top") or false
local hearing_vines = minetest.settings:get_bool("hearing_vines") or false
local protector = minetest.settings:get_bool("protector") or false
local protector2 = minetest.settings:get_bool("protector2") or false
local meat_raw = minetest.settings:get_bool("meat_raw") or false
local meat = minetest.settings:get_bool("deco_stone_sun") or false
local meatblock_raw = minetest.settings:get_bool("deco_stone_bird") or false
local meatblock = minetest.settings:get_bool("deco_stone_bird") or false

minetest.settings:set("mob_difficulty", mob_difficulty2)

minetest.settings:set("mob_chance_multiplier", mob_chance_multiplier2)

minetest.settings:set("hudbars_bar_type", hudbars_bar_type2)

if not letter then
	minetest.register_on_newplayer(function(player)
		minetest.after(0.1, function()
			if comboblock then
				player:get_inventory():set_list("main", {})
			end
		end)
	end)
end

if auto_eat_fast then
	minetest.register_on_mods_loaded(function()
		if minetest.settings:get_bool("enable_touchscreen") then
			if tph_eating then
				tph_eating["eating_time"] = 0.001
				tph_eating["eating_repeats"] = 6
			end
		end
	end)
end

if eat_fast then
	minetest.register_on_mods_loaded(function()
		if tph_eating then
			tph_eating["eating_time"] = 0.001
			tph_eating["eating_repeats"] = 6
		end
	end)
end

if not lava_orb then
minetest.unregister_item("mobs:lava_orb")
end

if not lasso then
minetest.unregister_item("mobs:lasso")
end

if not saddle then
minetest.unregister_item("mobs:saddle")
end

if not pick_lava then
minetest.unregister_item("mobs:pick_lava")
end

if not net then
minetest.unregister_item("mobs:net")
end

if not nametag then
minetest.unregister_item("mobs:nametag")
end

if not leather then
minetest.unregister_item("mobs:leather")
end

if not shears then
minetest.unregister_item("mobs:shears")
end

if not fence_wood then
minetest.unregister_item("mobs:fence_wood")
end

if not fence_top then
minetest.unregister_item("mobs:fence_top")
end

if not hearing_vines then
minetest.unregister_item("mobs:hearing_vines")
end

if not protector then
minetest.unregister_item("mobs:protector")
end

if not protector2 then
minetest.unregister_item("mobs:protector2")
end

if not meat_raw then
minetest.unregister_item("mobs:meat_raw")
end

if not meat then
minetest.unregister_item("mobs:meat")
end

if not meatblock_raw then
minetest.unregister_item("mobs:meatblock_raw")
end

if not meatblock then
minetest.unregister_item("mobs:meatblock")
end
