local vscode = require "vscode"
local map = vim.keymap.set

-- insert mode nav
map("i", "<C-b>", "<ESC>^i", { desc = "Move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "Move end of line" })
map("i", "<C-h>", "<Left>", { desc = "Move left" })
map("i", "<C-l>", "<Right>", { desc = "Move right" })
map("i", "<C-j>", "<Down>", { desc = "Move down" })
map("i", "<C-k>", "<Up>", { desc = "Move up" })

-- buffer
map("n", "<S-Tab>", function()
  vscode.action "workbench.action.previousEditor"
end, { desc = "Previous buffer" })
map("n", "<Tab>", function()
  vscode.action "workbench.action.nextEditor"
end, { desc = "Next buffer" })
map("n", "<leader>x", function()
  vscode.action "workbench.action.closeActiveEditor"
end, { desc = "Close buffer" })
map("n", "<leader>b", function()
  vscode.action "workbench.action.files.newUntitledFile"
end, { desc = "New buffer" })

-- comments
map("n", "<leader>/", function()
  vscode.action "editor.action.commentLine"
end, { desc = "Toggle comment" })
map("v", "<leader>/", function()
  vscode.action "editor.action.commentLine"
end, { desc = "Toggle comment" })

-- telescope/fzf
map("n", "<leader>ff", function()
  vscode.action "workbench.action.quickOpen"
end, { desc = "Find files" })
map("n", "<leader>fw", function()
  vscode.action "workbench.action.findInFiles"
end, { desc = "Live grep" })
map("n", "<leader>fb", function()
  vscode.action "workbench.action.showAllEditors"
end, { desc = "Find buffers" })
map("n", "<leader>fh", function()
  vscode.action "workbench.action.showCommands"
end, { desc = "Command palette" })
map("n", "<leader>fo", function()
  vscode.action "workbench.action.openRecent"
end, { desc = "Recent files" })
map("n", "<leader>fz", function()
  vscode.action "actions.find"
end, { desc = "Find in current buffer" })
map("n", "<leader>gt", function()
  vscode.action "workbench.view.scm"
end, { desc = "Git status" })

map("n", "<leader>fs", function()
  vscode.action "workbench.action.gotoSymbol"
end, { desc = "Find symbols" })

map("n", "<leader>fS", function()
  vscode.action "workbench.action.showAllSymbols"
end, { desc = "Find workspace symbols" })

-- lsp mappings
map("n", "gd", function()
  vscode.action "editor.action.revealDefinition"
end, { desc = "Go to definition" })
map("n", "gD", function()
  vscode.action "editor.action.peekDefinition"
end, { desc = "Peek definition" })
map("n", "gr", function()
  vscode.action "editor.action.goToReferences"
end, { desc = "Go to references" })
map("n", "gi", function()
  vscode.action "editor.action.goToImplementation"
end, { desc = "Go to implementation" })
map("n", "gy", function()
  vscode.action "editor.action.goToTypeDefinition"
end, { desc = "Go to type definition" })
map("n", "K", function()
  vscode.action "editor.action.showHover"
end, { desc = "Show hover" })
map("n", "<leader>rn", function()
  vscode.action "editor.action.rename"
end, { desc = "Rename symbol" })
map({ "n", "v" }, "<leader>fm", function()
  vscode.action "editor.action.formatDocument"
end, { desc = "Format document" })

-- split buffers
map("n", "<leader>-", function()
  vscode.action "workbench.action.splitEditorDown"
end, { desc = "Split window below" })
map("n", "<leader>|", function()
  vscode.action "workbench.action.splitEditorRight"
end, { desc = "Split window right" })
