local keys = {
	{
		"<localleader>l",
		":CornelisQuestionToMeta\n:CornelisLoad\n:CornelisGoals\n",
		desc = "Load",
	},
	{
		"<localleader>r",
		":CornelisRefine\n",
		desc = "Refine",
	},
	{
		"<localleader>s",
		":CornelisSolve\n",
		desc = "Solve",
	},
	{
		"<localleader>b",
		":CornelisPrevGoal\n",
		desc = "Previous Goal",
	},
	{
		"<localleader>f",
		":CornelisNextGoal\n",
		desc = "Next Goal",
	},
	{
		"<localleader>a",
		":CornelisAuto\n",
		desc = "Auto Solve Attempt",
	},
	{
		"<localleader>t",
		":CornelisTypeContextInfer\n",
		desc = "Hole Info",
	},
	{
		"<localleader>c",
		":CornelisMakeCase\n",
		desc = "Split Case",
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
