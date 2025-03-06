local volar_init_options = {
  typescript = {
    tsdk = '/Users/nathancollins/repos/cap/cap-portal/src/node_modules/typescript/lib',
  },
}

return {
  cmd = { 'vue-language-server', '--stdio' },
  filetypes = { 'vue' },
  root_markers = { 'package.json' },
  init_options = volar_init_options,
}
