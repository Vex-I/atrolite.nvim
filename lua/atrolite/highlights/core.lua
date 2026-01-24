local M = {}

local function hl(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

function M.setup(c, opts)
    local bg = opts.transparent and "NONE" or c.black

    -- Editor
    hl("Normal", { fg = c.white, bg = bg })
    hl("Comment", { fg = c.cream, italic = true })
    hl("LineNr", { fg = c.dark_grey })
    hl("CursorLineNr", { fg = c.white })

    -- Syntax
    hl("Keyword", { fg = c.red })
    hl("Function", { fg = c.dark_green, bold = true})
    hl("Type", { fg = c.blue})
    hl("Number", { fg = c.green })

    hl("Special",       { fg = c.red })

    hl("Todo",          {
        fg = c.black,
        bg = c.cream,
        bold = true,
        italic = true,
    })

    hl("Done",          {
        fg = c.red,
        bold = true,
        italic = true,
    })

    hl("Error",         {
        fg = c.red,
        bold = true,
        reverse = true,
    })

    hl("Statement",     { fg = c.red })
    hl("Conditional",   { fg = c.red })
    hl("Repeat",        { fg = c.red })
    hl("Label",         { fg = c.red })
    hl("Exception",     { fg = c.red })

    hl("Operator",      {
        fg = c.red,
        italic = true,
    })


    hl("Identifier",    { fg = c.blue })

    hl("PreProc",       { fg = c.blue })
    hl("Include",       { fg = c.blue })
    hl("Define",        { fg = c.blue })
    hl("Macro",         { fg = c.blue })
    hl("PreCondit",     { fg = c.blue })

    hl("Constant",      { fg = c.green })
    hl("Character",     { fg = c.dark_green, italic= true })
    hl("Boolean",       { fg = c.blue })
    hl("Float",         { fg = c.green })

    hl("String",        {
        fg = c.dark_green,
        italic = true,
    })

    hl("Typedef",       { fg = c.dark_blue})

    hl("StorageClass",  { fg = c.red })
    hl("Structure",     { fg = c.blue })

end

return M

