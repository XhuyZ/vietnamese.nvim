local ENUM_DIACRITIC = require("vietnamese.constant").Diacritic

local M = {
	tone_keys = {
		["s"] = ENUM_DIACRITIC.Acute,
		["f"] = ENUM_DIACRITIC.Grave,
		["r"] = ENUM_DIACRITIC.Hook,
		["x"] = ENUM_DIACRITIC.Tilde,
		["j"] = ENUM_DIACRITIC.Dot,
	},
	tone_removal_keys = {
		"z",
		["z"] = true,
	},
	shape_keys = {
		-- a = { a = ENUM_DIACRITIC.CIRCUMFLEX, w = ENUM_DIACRITIC.BREVE },
		-- e = { e = ENUM_DIACRITIC.CIRCUMFLEX, w = ENUM_DIACRITIC.CIRCUMFLEX },
		-- o = { o = ENUM_DIACRITIC.CIRCUMFLEX, w = ENUM_DIACRITIC.HORN },
		-- u = { u = ENUM_DIACRITIC.HORN, w = ENUM_DIACRITIC.HORN },
		-- d = { d = ENUM_DIACRITIC.HORIZONTAL_STROKE },

		w = {
			a = ENUM_DIACRITIC.Breve,
			o = ENUM_DIACRITIC.Horn,
			u = ENUM_DIACRITIC.Horn,
			e = ENUM_DIACRITIC.Circumflex,
		},

		a = {
			a = ENUM_DIACRITIC.Circumflex,
		},

		e = {
			e = ENUM_DIACRITIC.Circumflex,
		},

		o = {
			o = ENUM_DIACRITIC.Circumflex,
		},

		d = {
			d = ENUM_DIACRITIC.HorizontalStroke,
		},
	},
	char_map = {
		[""] = { w = "ư", W = "Ư" },
	},

	-- Check if a character is a valid input character to make a Vietnamese character
	--
	is_diacritic_pressed = function(char)
		return char:lower():match("[sfrxjzawdeo]") ~= nil
	end,
}

return M
