require("config.lazy")

vim.opt.number = true
-- Переопределение навигации на jkl;
vim.keymap.set('n', 'j', 'h', { noremap = true })
vim.keymap.set('n', 'k', 'j', { noremap = true })
vim.keymap.set('n', 'l', 'k', { noremap = true })
vim.keymap.set('n', ';', 'l', { noremap = true })

-- Операции с текстом (важно переопределить и их)
vim.keymap.set('o', 'j', 'h', { noremap = true })
vim.keymap.set('o', 'k', 'j', { noremap = true })
vim.keymap.set('o', 'l', 'k', { noremap = true })
vim.keymap.set('o', ';', 'l', { noremap = true })

-- Visual режим
vim.keymap.set('v', 'j', 'h', { noremap = true })
vim.keymap.set('v', 'k', 'j', { noremap = true })
vim.keymap.set('v', 'l', 'k', { noremap = true })
vim.keymap.set('v', ';', 'l', { noremap = true })

-- Если нужна исходная функция 'h' (перейти в начало строки)
-- переопредели на другую клавишу, например 'H'
vim.keymap.set('n', 'H', 'h', { noremap = true })
vim.keymap.set('o', 'H', 'h', { noremap = true })
vim.keymap.set('v', 'H', 'h', { noremap = true })

