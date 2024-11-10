require('lualine').setup{
  options = {
    icons_enabled = true,
    theme = 'cyberdream' 
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
