local S = core.get_translator(core.get_current_modname())

local panes_list = {
	{ "white", S("White"), "ffffff" },
	{ "blue", S("Blue"), "0000FF" },
	{ "cyan", S("Cyan"), "00FFFF" },
	{ "green", S("Green"), "00FF00" },
	{ "magenta", S("Magenta"), "FF00FF" },
	{ "orange", S("Orange"), "FF6103" },
	{ "violet", S("Purple"), "800080" },
	{ "red", S("Red"), "FF0000" },
	{ "yellow", S("Yellow"), "FFFF00" },
}

for i in ipairs(panes_list) do
	local name = panes_list[i][1]
	local description = panes_list[i][2]
	local colour = panes_list[i][3]
	local tex = "abriglass_plainglass.png^[colorize:#" .. colour .. ":122"

	abripanes.register_pane("abriglass_pane_" .. name, {
		description = S("@1 Glass Pane", description),
		textures = { tex, tex, tex },
		groups = { cracky = 3 },
		use_texture_alpha = "blend",
		wield_image = tex,
		inventory_image = tex,
		sounds = default.node_sound_glass_defaults(),
		recipe = {
			{ "default:glass", "default:glass", "default:glass" },
			{ "default:glass", "default:glass", "default:glass" },
			{ "", "dye:" .. name, "" },
		},
	})
end
