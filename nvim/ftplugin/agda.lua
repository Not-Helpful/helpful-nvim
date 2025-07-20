local keys = {
	{
		"<leader>ml",
		":CornelisQuestionToMeta\n:CornelisLoad\n:CornelisGoals\n",
		desc = "Load",
	},
	{
		"<leader>mr",
		":CornelisRefine\n",
		desc = "Refine",
	},
	{
		"<leader>ms",
		":CornelisSolve\n",
		desc = "Solve",
	},
	{
		"<leader>mb",
		":CornelisPrevGoal\n",
		desc = "Previous Goal",
	},
	{
		"<leader>mf",
		":CornelisNextGoal\n",
		desc = "Next Goal",
	},
	{
		"<leader>ma",
		":CornelisAuto\n",
		desc = "Auto Solve Attempt",
	},
	{
		"<leader>mt",
		":CornelisTypeContextInfer\n",
		desc = "Hole Info",
	},
	{
		"<leader>mc",
		":CornelisMakeCase\n",
		desc = "Split Case",
	},
}

local function mapkey(key)
	print(key[1])
	vim.keymap.set({ "n" }, key[1], key[2], { desc = key[3] })
end

local function mapAllKeys(allkeys)
	for _, key in pairs(allkeys) do
		mapkey(key)
	end
end

mapAllKeys(keys)
