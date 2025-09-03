local keys = {
	{
		"<M-n>",
		":RocqNext\n:RocqJumpToEnd\n",
		desc = "Next",
	},
	{
		"<M-c>",
		":RocqUndo\n:RocqJumpToEnd\n",
		desc = "Back",
	},
}

local function mapkey(key)
	vim.keymap.set({ "n" }, key[1], key[2], { desc = key[3], buffer = true })
end

local function mapAllKeys(allkeys)
	for _, key in pairs(allkeys) do
		mapkey(key)
	end
end

mapAllKeys(keys)
