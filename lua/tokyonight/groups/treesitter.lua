local Util = require("tokyonight.util")

local M = {}

---@type tokyonight.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
local ret = {
  ["@annotation"]                 = "PreProc",
  ["@attribute"]                  = "PreProc",
  ["@boolean"]                    = "Boolean",
  ["@character"]                  = "Character",
  ["@character.printf"]           = "SpecialChar",
  ["@character.special"]          = "SpecialChar",
  ["@comment"]                    = "Comment",
  ["@comment.error"]              = { fg = c.red1 },
  ["@comment.hint"]               = { fg = c.blue2 },
  ["@comment.info"]               = { fg = c.blue6 },
  ["@comment.note"]               = { fg = c.blue2 },
  ["@comment.todo"]               = { fg = c.yellow },
  ["@comment.warning"]            = { fg = c.orange },
  ["@constant"]                   = "Constant",
  ["@constant.builtin"]           = "Special",
  ["@constant.macro"]             = "Define",
  ["@constructor"]                = { fg = c.magenta },
  ["@constructor.tsx"]            = { fg = c.blue1 },
  ["@diff.delta"]                 = "DiffChange",
  ["@diff.minus"]                 = "DiffDelete",
  ["@diff.plus"]                  = "DiffAdd",
  ["@function"]                   = "Function",
  ["@function.builtin"]           = "Special",
  ["@function.call"]              = "@function",
  ["@function.macro"]             = "Macro",
  ["@function.method"]            = "Function",
  ["@function.method.call"]       = "@function.method",
  ["@keyword"]                    = { fg = c.purple, style = opts.styles.keywords },
  ["@keyword.conditional"]        = "Conditional",
  ["@keyword.coroutine"]          = "@keyword",
  ["@keyword.debug"]              = "Debug",
  ["@keyword.directive"]          = "PreProc",
  ["@keyword.directive.define"]   = "Define",
  ["@keyword.exception"]          = "Exception",
  ["@keyword.function"]           = { fg = c.magenta, style = opts.styles.functions },
  ["@keyword.import"]             = "Include",
  ["@keyword.operator"]           = "@operator",
  ["@keyword.repeat"]             = "Repeat",
  ["@keyword.return"]             = "@keyword",
  ["@keyword.storage"]            = "StorageClass",
  ["@label"]                      = { fg = c.blue },
  ["@markup"]                     = "@none",
  ["@markup.emphasis"]            = { italic = true },
  ["@markup.environment"]         = "Macro",
  ["@markup.environment.name"]    = "Type",
  ["@markup.heading"]             = "Title",
  ["@markup.italic"]              = { italic = true },
  ["@markup.link"]                = { fg = c.teal },
  ["@markup.link.label"]          = "SpecialChar",
  ["@markup.link.label.symbol"]   = "Identifier",
  ["@markup.link.url"]            = "Underlined",
  ["@markup.list"]                = { fg = c.blue5 },
  ["@markup.list.checked"]        = { fg = c.green1 },
  ["@markup.list.markdown"]       = { fg = c.orange, bold = true },
  ["@markup.list.unchecked"]      = { fg = c.blue },
  ["@markup.math"]                = "Special",
  ["@markup.raw"]                 = "String",
  ["@markup.raw.markdown_inline"] = { bg = c.terminal_black, fg = c.blue },
  ["@markup.strikethrough"]       = { strikethrough = true },
  ["@markup.strong"]              = { bold = true },
  ["@markup.underline"]           = { underline = true },
  ["@module"]                     = "Include",
  ["@module.builtin"]             = { fg = c.red },
  ["@namespace.builtin"]          = "@variable.builtin",
  ["@none"]                       = {},
  ["@number"]                     = "Number",
  ["@number.float"]               = "Float",
  ["@operator"]                   = { fg = c.blue5 },
  ["@property"]                   = { fg = c.green1 },
  ["@punctuation.bracket"]        = { fg = c.fg_dark },
  ["@punctuation.delimiter"]      = { fg = c.blue5 },
  ["@punctuation.special"]        = { fg = c.blue5 },
  ["@punctuation.special.markdown"] = { fg = c.orange },
  ["@string"]                     = { fg = c.green },
  ["@string.documentation"]       = { fg = c.yellow },
  ["@string.escape"]              = { fg = c.magenta },
  ["@string.regexp"]              = { fg = c.blue6 },
  ["@tag"]                        = "Label",
  ["@tag.attribute"]              = "@property",
  ["@tag.delimiter"]              = "Delimiter",
  ["@tag.delimiter.tsx"]          = { fg = c.blue1 },
  ["@tag.tsx"]                    = { fg = c.red },
  ["@tag.javascript"]             = { fg = c.red },
  ["@type"]                       = "Type",
  ["@type.builtin"]               = { fg = c.blue1 },
  ["@type.definition"]            = "Typedef",
  ["@type.qualifier"]             = "@keyword",
  ["@variable"]                   = { fg = c.fg, style = opts.styles.variables },
  ["@variable.builtin"]           = { fg = c.red },
  ["@variable.member"]            = { fg = c.green1 },
  ["@variable.parameter"]         = { fg = c.yellow },
  ["@variable.parameter.builtin"] = { fg = c.fg_dark },
}

  for i, color in ipairs(c.rainbow) do
    ret["@markup.heading." .. i .. ".markdown"] = { fg = color, bold = true }
  end
  return ret
end

return M
