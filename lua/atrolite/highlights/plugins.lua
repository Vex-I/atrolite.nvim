local M = {}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

local function link(from, to)
  hl(from, { link = to })
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

    hl("NvimTreeStatusLine", {
        bg = c.black,
    })

    hl("NvimTreeStatusLineNC", {
        bg = c.black,
    })

    --indent
    hl("IblIndent", {fg = c.dark_grey})
    hl("IblScope", {fg = c.grey}) 

    --markdown-nvim
    hl("RenderMarkdownH1", { fg = c.red, bold = true })
    hl("RenderMarkdownH2", { fg = c.blue, bold = true })
    hl("RenderMarkdownH3", { fg = c.green, bold = true })
    hl("RenderMarkdownH4", { fg = c.cream })
    hl("RenderMarkdownH5", { fg = c.white })
    hl("RenderMarkdownH6", { fg = c.grey })

    hl("RenderMarkdownH1Bg", { bg = c.dark_red })
    hl("RenderMarkdownH2Bg", { bg = c.dark_blue })
    hl("RenderMarkdownH3Bg", { bg = c.dark_green })
    hl("RenderMarkdownH4Bg", { bg = c.dark_grey })
    hl("RenderMarkdownH5Bg", { bg = c.grey })
    hl("RenderMarkdownH6Bg", { bg = c.black })

    hl("RenderMarkdownCode", {
        bg = c.dark_grey,
    })

    hl("RenderMarkdownCodeBorder", {
        bg = c.dark_grey,
    })

    hl("RenderMarkdownCodeInline", {
        bg = c.grey,
        fg = c.white,
    })

    hl("RenderMarkdownInlineHighlight", {
        bg = c.grey,
        fg = c.white,
    })

    hl("RenderMarkdownCodeInfo", {
        fg = c.blue,
        italic = true,
    })

    hl("RenderMarkdownCodeFallback", {
        fg = c.white,
    })

    hl("RenderMarkdownQuote", {
        fg = c.cream,
        italic = true,
    })

    for i = 1, 6 do
        link("RenderMarkdownQuote" .. i, "RenderMarkdownQuote")
    end

    hl("RenderMarkdownBullet", { fg = c.white })
    hl("RenderMarkdownDash",   { fg = c.grey })
    hl("RenderMarkdownIndent", { fg = c.dark_grey })

    hl("RenderMarkdownLink", {
        fg = c.blue,
        underline = true,
    })

    hl("RenderMarkdownLinkTitle", {
        fg = c.dark_blue,
    })

    link("RenderMarkdownWikiLink", "RenderMarkdownLink")

    hl("RenderMarkdownUnchecked", { fg = c.grey })
    hl("RenderMarkdownChecked",   { fg = c.green })
    hl("RenderMarkdownTodo",      { fg = c.red })

    hl("RenderMarkdownTableHead", {
        fg = c.cream,
        bold = true,
    })

    hl("RenderMarkdownTableRow", {
        fg = c.white,
    })

    hl("RenderMarkdownTableFill", {
        fg = c.dark_grey,
    })

    hl("RenderMarkdownMath", {
        fg = c.green,
    })

    hl("RenderMarkdownHtmlComment", {
        fg = c.grey,
        italic = true,
    })

    hl("RenderMarkdownSuccess", { fg = c.green })
    hl("RenderMarkdownInfo",    { fg = c.blue })
    hl("RenderMarkdownHint",    { fg = c.cream })
    hl("RenderMarkdownWarn",    { fg = c.red })
    hl("RenderMarkdownError",   { fg = c.dark_red })

    hl("RenderMarkdownSign", {
        bg = c.black,
    })






end

return M

