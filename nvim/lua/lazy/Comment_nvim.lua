-- vim: set fdl=4:

-- $vfn/lua/lazy/Commen6_nvim.lua
-- $lazy/Comment.nvim/doc/Comment.txt
-- :h comment.keybindings

-- gb[motion]/gc[motion]  toggles block/line comment [motion] or selection
-- gcA                    append comment
-- gco/gcO                begin comment on next/previous line
-- [n]gbc/[n]gcc          toggles block/line comment for [n] line

-- Limitations:
--  effectively deprecated by built-in commenting ($vimfiles/QR/variants.md)
--  needs treesitter parser to know how to comment
--  uses  commentstring

return { 'numToStr/Comment.nvim',opts={},}

