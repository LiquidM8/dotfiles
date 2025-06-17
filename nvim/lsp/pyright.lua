vim.lsp.config["pyright"] = {
	cmd = { "pyright-langserver", "--stdio" },
	filetypes = {
		"python",
	},
	root_markers = {
		".git/",
	},
	capabilities = {
		textDocument = {
			semanticTokens = nil,
		},
		workspace = {
			semanticTokens = nil,
		},
	},
	workspace_required = false,
	settings = {
		python = {
			analysis = {
				autoSearchPaths = true,
				diagnosticMode = "openFilesOnly",
				useLibraryCodeForTypes = true,
				typeCheckingMode = "on",
				extraPaths = { "~/.local/lib/python3.11/site-packages", "/usr/lib/python3/dist-packages" },
				diagnosticSeverityOverrides = { reportAttributeAccessIssue = "none",},
				pythonVersion = "3.11",
				pythonPlatform = "Linux",
			},
		},
	},
}
