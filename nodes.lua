﻿local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- keycolor = { d="description", c="rgbColor"}
local couleurs = {
	white = {		d = "White", c = "dee2e3" },
	grey = {		d = "Grey", c = "86867e" },
	darkgrey = {	d = "Dark grey", c = "3b3f42" },
	black = {		d = "Black", c = "0e0f14" },
	brown = {		d = "Brown", c = "6a4224" },
	red = {			d = "Red", c = "982321" },
	orange = {		d = "Orange", c = "eb6b0a" },
	yellow = {		d = "Yellow", c = "f6bc1e" },
	green = {		d = "Green", c = "67b118" },
	darkgreen = {	d = "Dark green", c = "4f651f" },
	cyan = {		d = "Cyan", c = "15818d" },
	lightblue = {	d = "Light blue", c = "30a2d2" },
	blue = {		d = "Blue", c = "313396" },
	violet = {		d = "Violet", c = "6f24a4" },
	magenta = {		d = "Magenta", c = "b43baa" },
	pink = {		d = "Pink", c = "ea7c9f" },
}

for i, couleur in pairs(couleurs) do
	--minetest.register_node("concrete:"..i, {
	--	description = S("Concrete")..S(couleur.d),
	--})
	minetest.register_node("concrete:"..i, {
		description = S("Concrete").." "..S(couleur.d),
		tiles = {"concrete_base.png^[colorize:#"..couleur.c.."CC" },
		is_ground_content = false,
		groups = {oddly_breakable_by_hand=3,stone=1}
	})
end