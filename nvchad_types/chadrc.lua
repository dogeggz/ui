---@meta

---@class ChadrcConfig
---@field ui? UIConfig
---@field base46? Base46Config
---@field lsp? NvLspConfig
---@field term? TermConfig
---@field cheatsheet? NvCheatsheetConfig
---@field my_pallete? MyPalleteConfig

---@class MyPalleteConfig
---@field base00 string
---@field base01 string
---@field base02 string
---@field base03 string
---@field white string
---@field blue_dark string
---@field blue string
---@field blue_light string
---@field red_dark string
---@field red string
---@field red_light string
---@field violet_dark string
---@field violet string
---@field violet_light string
---@field green_dark string
---@field green string
---@field green_light string
---@field magenta_dark string
---@field magenta string
---@field magenta_light string
---@field gray_dark string
---@field gray string
---@field gray_light string
---@field cyan_dark string
---@field cyan string
---@field cyan_light string
---@field yellow_dark string
---@field yellow string
---@field yellow_light string
---@field orange_dark string
---@field orange string
---@field orange_light string

---@class Base46Config
---@field integrations? Base46Integrations[]
---@field theme? ThemeName

--- UI related configuration
--- e.g. colorschemes, statusline themes, cmp themes, dashboard, some LSP ui related
---@class UIConfig
--- List of highlights group to add.
--- Should be highlights that is not a part of base46 default integrations
--- (The default is all hlgroup that can be found from `hl_override`)
--- Example
--- ```lua
---     hl_add = {
---       ["HLName"] = {fg = "red"},
---     }
--- ```
--- see https://github.com/NvChad/base46/tree/master/lua/base46/integrations
---@field hl_add? HLTable
--- List of highlight groups that is part of base46 default integration that you want to change
--- ```lua
---     hl_overrde = {
---       ["HLName"] = {fg = "red"},
---     }
--- ```
--- see https://github.com/NvChad/base46/tree/master/lua/base46/integrations
---@field hl_override? Base46HLGroupsList
--- see https://github.com/NvChad/base46/tree/master/lua/base46/themes for the colors of each theme
--- Also accept a special key `all` to change a base46 key to a specific color for all themes
---@field changed_themes? ChangedTheme
--- A table with 2 strings, denoting the themes to toggle between.
--- One of the 2 strings must be the value of `theme` field
--- Example:
--- ```lua
---     theme_toggle = { "onedark", "one_light", },
--- ```
---@field theme_toggle? ThemeName[]
--- Enable transparency or not
---@field transparency? boolean
--- Theme to use.
--- You can try out the theme by executing `:Telescope themes`
--- see https://github.com/NvChad/base46/tree/master/lua/base46/themes
---@field theme? ThemeName
---@field cmp? NvCmpConfig
---@field telescope? NvTelescopeConfig
---@field statusline? NvStatusLineConfig
---@field tabufline? NvTabLineConfig
---@field nvdash? NvDashboardConfig
--- Whether to enable LSP Semantic Tokens highlighting
--- List of extras themes for other plugins not in NvChad that you want to compile

--- Options for stylings of nvim-cmp
---@class NvCmpConfig
--- Whether to add colors to icons in nvim-cmp popup menu
---@field icons? boolean
--- Whether to also have the lsp kind highlighted with the icons as well or not
---@field lspkind_text? boolean
--- nvim-cmp style
---@field style? '"default"'|'"flat_light"'|'"flat_dark"'|'"atom"'|'"atom_colored"'
--- Only has effects when the style is `default`
---@field border_color? string|Base30Colors
--- Whether to have more vibrant color for the currently selected entry in the popup menu
---@field selected_item_bg? "colored"|"simple"

---@class NvTelescopeConfig
--- Telescope style
---@field style? '"borderless"'|'"bordered"'

---@class NvStatusLineConfig
--- statusline theme
---@field theme? '"default"'|'"vscode"'|'"vscode_colored"'|'"minimal"'
--- Separator style for NvChad Statusline
---     - Only when the *theme* is `minimal`, "round" or "block" will be having effect
---@field separator_style? '"default"'|'"round"'|'"block"'|'"arrow"'|'"slash"'
--- The list of module names from default modules + your modules
--- Check https://github.com/NvChad/ui/blob/v2.5/lua/nvchad/stl/utils.lua#L12 for the modules of each statusline theme
---@field order? string[]
--- Your modules to be added to the statusline
--- ```lua
---     modules = {
---       abc = function()
---           return "hi"
---         end,
---     }
--- ```
---@field modules? table<string, string | fun(): string>
--- Maximum length for the progress messages section
--- Options for NvChad Tabufline
---@class NvTabLineConfig
--- Whether to use/load tabufline or not
---@field enabled? boolean
--- If false, load tabufline on startup
--- If true, load tabufline when there is at least 2 buffers opened
---@field lazyload? boolean
--- The order is a list of module names from default modules + your modules
---@field order? ('"treeOffset"'|'"buffers"'|'"tabs"'|'"btns"')[] | string[]
--- Show numbers on tabufline buffer tabs
--- Your modules to be added to the tabufline
--- ```lua
---     modules = {
---       abc = function()
---           return "hi"
---         end,
---     }
--- ```
---@field modules? table<string, fun(): string>

---@class NvDashboardConfig
--- Whether to open dashboard on opening nvim
---@field load_on_startup? boolean
--- Your ascii art
--- Each string is one line
---@field header? string[],
--- List of buttons to show on the dashboard
---@field buttons? NvDashButtonConfig[] | function[]

---@class NvCheatsheetConfig
--- Cheatsheet theme
---@field theme? '"grid"'|'"simple"'
---@field excluded_groups? string[]

---@class NvDashButtonConfig
---@field [1] string Description for the button
---@field [2] string sequence of keys to press to trigger the keybind
---@field [3] string|fun() A Vim Command/A Lua function to be triggered when pressing the keybind/pressing enter on the line with the description on the dashboard

---Options for NvChad/ui lsp configuration
---@class NvLspConfig
---@field signature? boolean showing LSP function signatures as you type

---@class TermWinOpts
---@field winhl string

---@class TermSizes
---@field sp number
---@field vsp number
---@field ["bo sp"] number
---@field ["bo vsp"] number

---@class TermFloat
---@field relative string
---@field row number
---@field col number
---@field width number
---@field height number
---@field border string

---@class TermConfig
---@field winopts TermWinOpts
---@field sizes TermSizes
---@field float TermFloat
