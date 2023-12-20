# btterm

`btterm` stands for "Better Terminal". It aims to enhance the Neovim terminal experience, allowing easy bindings and autoinsert when moving to a terminal buffer.

![Peek 2023-12-19 23-58](https://github.com/pvskp/btterm.nvim/assets/77075070/c0528c3a-0d7a-4963-bd32-ffef60e59c35)

# ⚡ Installation
Using [folke/lazy.nvim](https://github.com/folke/lazy.nvim):

```lua
return {
	"pvskp/btterm.nvim",
	lazy = false,
	config = function()
		require("btterm").setup({})
    end,
```

# 🚀 Usage
By default, `btterm` will create the following mappings:

- `<M-s>`: Open a bottom terminal
- `<M-d>`: Open a side terminal

For better movement between windows, it's recommended to use a remap to deal with the terminal mode escape sequence (<C-\><C-N>, see `:h terminal-input`). For example: 

```lua
--- Normal mode
keymap("n", "<M-j>", "<C-w>j")
keymap("n", "<M-k>", "<C-w>k")
keymap("n", "<M-l>", "<C-w>l")
keymap("n", "<M-h>", "<C-w>h")

--- Terminal mode
keymap("t", "<M-k>", "<C-\\><C-n><C-w>k", { silent = true })
keymap("t", "<M-j>", "<C-\\><C-n><C-w>j", { silent = true })
keymap("t", "<M-l>", "<C-\\><C-n><C-w>l", { silent = true })
keymap("t", "<M-h>", "<C-\\><C-n><C-w>h", { silent = true })
```

# ⚙️  Configuration
You can override the default mappings by passing a the following options to the `setup` function:
```lua
return {
	"pvskp/btterm.nvim",
	lazy = false,
	config = function()
		require("btterm").setup({
            bottom_term_key = "<M-s>",
            side_term_key = "<M-d>",
        })
    end,
```
