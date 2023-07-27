lvim.transparent_window = true
vim.opt.relativenumber = true
lvim.format_on_save.enabled = true
vim.opt.guicursor = ""

lvim.plugins = {
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },

  {

  {
    }

  {

  {

  {

  {
    cmd = "TroubleToggle",

  {

  {
        -- All these keys will be mapped to their corresponding default scrolling animation
        hide_cursor = true,          -- Hide cursor while scrolling
        stop_eof = true,             -- Stop at <EOF> when scrolling downwards
        use_local_scrolloff = false, -- Use the local scope of scrolloff instead of the global scope
        respect_scrolloff = false,   -- Stop scrolling when the cursor reaches the scrolloff margin of the file
        cursor_scrolls_alone = true, -- The cursor will keep on scrolling even if the window cannot scroll further
        pre_hook = nil,              -- Function to run before the scrolling animation starts


    opts = {
      colorcolumn = "80",
      disabled_filetypes = { "help", "text", "markdown" },
      custom_colorcolumn = {},
      scope = "file",
    }
  },
}
lvim.colorscheme = "moonfly"
-- Set global options
lvim.formatting = {
  wrap = true,
  columns = 80,
  linebreak = true
}
