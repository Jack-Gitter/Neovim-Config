require'lspconfig'.pyright.setup{}
return {
	settings = {

    python = {
      analysis = {
        typeCheckingMode = "off"
      }
    }
	},
}
