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
