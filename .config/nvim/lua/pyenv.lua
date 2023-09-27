local io = require('io')
local os = require('os')


function activate_venv()
	local pyenvfile=io.open('.python-version', "r")

	if pyenvfile then
		local pythonenv = pyenvfile:read "*a"
		pyenvfile:close()
		local envpath = os.getenv('PYENV_ROOT') .. "/versions/" .. pythonenv
	end
end

activate_venv()
