function ToggleQuickfix()
	local winid = vim.fn.getqflist({ winid = 0 }).winid
	if winid ~= 0 then
		vim.cmd("cclose")
	else
		vim.cmd("copen")
	end
end

vim.api.nvim_create_user_command("ToggleQuickfix", ToggleQuickfix, {})
