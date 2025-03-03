dofile( minetest.get_modpath("easy_night") .. "/beds/api.lua")

local time_to_sleep = tonumber(minetest.settings:get("time_to_sleep") or 0.78)
local leaf_torch = minetest.settings:get_bool("leaf_torch") ~= false
local sleeping_bag = minetest.settings:get_bool("sleeping_bag") ~= false

if leaf_torch then
	minetest.register_craft({
		output = "default:torch",
		recipe = {
			{"group:leaves"},
			{"group:stick"}
		}
	})
end

if time_to_sleep > 1 then
	minetest.settings:set("time_to_sleep", 0.78)
else
	beds.day_interval.finish = time_to_sleep
end

if sleeping_bag then

	local S = minetest.get_translator("easy_night")

	register_bed2("easy_night:sleeping_bag", {
		description = S("Sleeping bag"),
		inventory_image = "beds_bed.png^[colorize:white:211",
		wield_image = "beds_bed.png^[colorize:white:211",
		tiles = {
			bottom = {
				"wool_white.png^[transformR270",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png"
			},
			top = {
				"[combine:16x16:0,0=wool_white.png:-8,0=beds_bed_top_top.png^[transformR270",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png",
				"wool_white.png",
			}
		},
		nodebox = {
			bottom = {-0.5, -0.5, -0.5, 0.5, -0.3, 0.5},
			top = {-0.5, -0.5, -0.5, 0.5, -0.3, 0.5},
		},
		selectionbox = {-0.5, -0.5, -0.5, 0.5, -0.3, 1.5},
		recipe = {
			{"group:leaves", "group:leaves", "group:leaves"},
			{"group:wood", "group:wood", "group:wood"}
		}
	})
end
