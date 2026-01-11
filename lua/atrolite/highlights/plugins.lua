local M = {}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

--TODO: Seperate into different group
function M.setup(c, opts)
    local bg = opts.transparent and "NONE" or c.black
    -- Telescope
    hl("TelescopeNormal", { fg = c.white, bg = bg })
    hl("TelescopeBorder", { fg = c.cream})

    -- NvimTree
    hl("NvimTreeNormal", {fg = c.white, bg = bg})
    hl("NvimTreeFolderName", {fg = c.blue})
    hl("NvimTreeOpenedFolderName", {fg = c.dark_blue})

    -- GitSigns
    hl("GitSignsAdd", { fg = c.dark_green })
    hl("GitSignsChange", { fg = c.green })
    hl("GitSignsDelete", { fg = c.dark_red })

    --LSP
    hl("LspFloatWinNormal", {fg = c.white, bg = c.black})
    hl("LspFloatWinBorder", {fg = c.black})
    hl("LspInfoBorder", {fg = c.black})

    --nvim-cmp
    hl("CmpPmenu", { fg = c.white, bg = "NONE"})
    hl("CmpPmenuSel", { fg = c.cream, bg = c.grey })
    hl("CmpDocumentation", { fg = c.white, bg = c.black})
    hl("CmpDocumentationBorder", { fg = c.cream, bg = "NONE"})
    hl("CmpGhostText", { fg = c.black } )
    hl("CmpItemAbbr", { fg = c.white} )
    hl("CmpItemAbbrDeprecated",{ fg = c.cream, strikethrough = true })
    hl("CmpItemAbbrMatch", { fg = c.cream })
    hl("CmpItemAbbrMatchFuzzy", { fg = c.cream})
    hl("CmpItemKindCodeium", { fg = c.blue})
    hl("CmpItemKindCopilot", { fg = c.blue})
    hl("CmpItemKindSupermaven", { fg = c.blue})
    hl("CmpItemKindDefault", { fg = c.dark_grey})
    hl("CmpItemKindTabNine", { fg = c.blue})
    hl("CmpItemMenu", { fg = c.grey})

    --bufferline
    hl("BufferLineFill", {bg = c.black})

    hl("BufferLineBuffer", {fg = c.white, bg = c.grey })
    hl("BufferLineBufferSelected", {
        fg = c.cream,
        bg = c.grey,
        underline = true,
        bold = true 
    })

    hl("BufferLineSeparator", { fg = c.black, bg = c.black})
    hl("BufferLineSeparatorSelected", { fg = c.black, bg = c.black})

    hl("BufferLineCloseButton",         { fg = c.white,  bg = c.grey })
    hl("BufferLineCloseButtonSelected", {
        fg = c.cream,
        bg = c.grey,
        underline = true,
        bold = true 
    })
    
    hl("BufferLineModified",         { fg = c.cream, bg = c.grey })
    hl("BufferLineModifiedVisible",  { fg = c.cream, bg = c.grey })
    hl("BufferLineModifiedSelected", {
        fg = c.cream,
        bg = c.grey,
        underline = true,
        bold = true 
    })
    hl("BufferLineIcon", {bg = c.grey })
    hl("BufferLineTruncMarker", {bg = c.grey })
    hl("BufferLineOffset", {
        fg = c.grey,
        bg = c.grey,
        bold = true,
    })

<<<<<<< HEAD
=======
    hl("NvimTreeStatusLine", {
        bg = c.black,
    })

    hl("NvimTreeStatusLineNC", {
        bg = c.black,
    })

>>>>>>> 05042f4 (Implemented Bufferline integration, lualine fix.)


    --indent
    hl("IblIndent", {fg = c.dark_grey})
    hl("IblScope", {fg = c.grey}) 
end

return M

