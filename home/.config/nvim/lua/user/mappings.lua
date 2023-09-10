return {
  n = {
    ["<C-h>"] = { 'hhhhh' },
    ["<C-j>"] = { 'jjjjj' },
    ["<C-k>"] = { 'kkkkk', remap = true },
    ["<C-l>"] = { 'lllll' },
    fh = { '<Leader>bp', remap = true },
    --fj = { '', remap = true },
    fk = { '<C-k>', remap = true },
    fl = { ':bnext<CR>', remap = true },
    fq = { ':bd<CR>' }
  }
}
