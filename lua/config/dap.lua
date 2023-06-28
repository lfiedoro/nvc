local dap = require('dap')

vim.keymap.set('n', '<F5>',  dap.continue)
vim.keymap.set('n', '<F10>', dap.step_over)
vim.keymap.set('n', '<F11>', dap.step_into)
vim.keymap.set('n', '<F12>', dap.step_out)
vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)

require('dap-python').setup('/home/lfiedoro/Sources/gta/gtax-runner/tools/python/bin/python3')
require('dap.ext.vscode').load_launchjs()
require("dapui").setup({
  icons = { expanded = "+", collapsed = "-", current_frame = "-" },
  mappings = {
    -- Use a table to apply multiple mappings
    expand = { "<CR>", "<2-LeftMouse>" },
    open = "o",
    remove = "d",
    edit = "e",
    repl = "r",
    toggle = "t",
  },
  -- Use this to override mappings for specific elements
  element_mappings = {
    -- Example:
    -- stacks = {
    --   open = "<CR>",
    --   expand = "o",
    -- }
  },
  -- Expand lines larger than the window
  -- Requires >= 0.7
  expand_lines = vim.fn.has("nvim-0.7") == 1,
  -- Layouts define sections of the screen to place windows.
  -- The position can be "left", "right", "top" or "bottom".
  -- The size specifies the height/width depending on position. It can be an Int
  -- or a Float. Integer specifies height/width directly (i.e. 20 lines/columns) while
  -- Float value specifies percentage (i.e. 0.3 - 30% of available lines/columns)
  -- Elements are the elements shown in the layout (in order).
  -- Layouts are opened in order so that earlier layouts take priority in window sizing.
  layouts = {
    {
      elements = {
      -- Elements can be strings or table with id and size keys.
        { id = "scopes", size = 0.25 },
        "breakpoints",
        "stacks",
        "watches",
      },
      size = 40, -- 40 columns
      position = "left",
    },
    {
      elements = {
        "repl",
        "console",
      },
      size = 0.25, -- 25% of total lines
      position = "bottom",
    },
  },
  controls = {
    -- Requires Neovim nightly (or 0.8 when released)
    enabled = true,
    -- Display controls in this element
    element = "repl",
    icons = {
      pause = "|",
      play = "p",
      step_into = ">",
      step_over = "/",
      step_out = "<",
      step_back = "\\",
      run_last = "+",
      terminate = "x",
    },
  },
  floating = {
    max_height = nil, -- These can be integers or a float between 0 and 1.
    max_width = nil, -- Floats will be treated as percentage of your screen.
    border = "single", -- Border style. Can be "single", "double" or "rounded"
    mappings = {
      close = { "q", "<Esc>" },
    },
  },
  windows = { indent = 1 },
  render = {
    max_type_length = nil, -- Can be integer or nil.
    max_value_lines = 100, -- Can be integer or nil.
  }
})

--table.insert(require('dap').configurations.python, {
--    -- The first three options are required by nvim-dap
--    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--    request = 'launch';
--    name = "Launch file";
--    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
--    program = "/home/lfiedoro/Sources/gta.gtax-runner/gtax/scripts/console.py"; -- This configuration will launch the current file if used.
--    args = {'-l', 'DEBUG'};
--    pythonPath = "/home/lfiedoro/Sources/gta.gtax-runner/tools/python/bin/python3";
--    env = variables;
--    justMyCode = false;
--    gevent = false;
--    cwd = '/home/lfiedoro/Sources/gta.gtax-runner';
--    subProcess = true;
--})
--
--local dap = require('dap')
--dap.adapters.python = {
--  type = 'executable';
--  command = '/home/lfiedoro/Sources/gta.gtax-runner/tools/python/bin/python3';
--  args = { '-m', 'debugpy.adapter' };
--}
---- /usr/bin/env /home/lfiedoro/Sources/gta.gtax-runner/tools/python/bin/python3 /home/lfiedoro/.vscode/extensions/ms-python.python-2022.18.2/pythonFiles/lib/python/debugpy/adapter/../../debugpy/launcher 41309 -- /home/lfiedoro/Sources/gta.gtax-runner/gtax/scripts/console.py -l DEBUG
--
----dap.set_log_level('TRACE')
----local widgets = require('dap.ui.widgets')
----widgets.sidebar(widgets.scopes).open()
--
--
--require('dap.ext.vscode').load_launchjs()
--
--variables = {}
--variables['PYTHONPATH'] = '/home/lfiedoro/Sources/gta.gtax-runner/tools/python-site-packages:/home/lfiedoro/Sources/gta.gtax-runner';
--variables['PYTHONUNBUFFERED'] = '1';
--for k, v in pairs(vim.fn.environ()) do
--    variables[k] = v;
--end
--dap.configurations.python = {
--  {
--    -- The first three options are required by nvim-dap
--    type = 'python'; -- the type here established the link to the adapter definition: `dap.adapters.python`
--    request = 'launch';
--    name = "Launch file";
--
--    -- Options below are for debugpy, see https://github.com/microsoft/debugpy/wiki/Debug-configuration-settings for supported options
--
--    program = "/home/lfiedoro/Sources/gta.gtax-runner/gtax/scripts/console.py"; -- This configuration will launch the current file if used.
--    args = {'-l', 'DEBUG'};
--    pythonPath = "/home/lfiedoro/Sources/gta.gtax-runner/tools/python/bin/python3";
--    env = variables;
--    justMyCode = false;
--    gevent = false;
--    cwd = '/home/lfiedoro/Sources/gta.gtax-runner';
--    subProcess = true;
--  },
--}
