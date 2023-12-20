# btterm

`btterm` stands for "Better Terminal". It aims to enhance the Neovim terminal experience, allowing easy bindings and autoinsert when moving to a terminal buffer.

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
