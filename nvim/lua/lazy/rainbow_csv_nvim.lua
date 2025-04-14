-- vim: fdl=4:

-- $vfn/lua/lazy/rainbow_csv_nvim.lua
-- :RainbowAlign  :RainbowShrink  work nicely, but no command to jump to next/previous cell

return { 'cameron-wags/rainbow_csv.nvim',
  config = true,
  ft = {
    'csv',
    'tsv',
    'csv_semicolon',
    'csv_whitespace',
    'csv_pipe',
    'rfc_csv',
    'rfc_semicolon'
  },
  cmd = {
    'RainbowDelim',
    'RainbowDelimSimple',
    'RainbowDelimQuoted',
    'RainbowMultiDelim'
  }
} -- it's not changine the highlighting...

