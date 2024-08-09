return {
	"mg979/vim-visual-multi",
	init = function()
		vim.cmd([[
let g:VM_leader                     = {'default': ',', 'visual': ',', 'buffer': ','}
let g:VM_maps                       = {}
let g:VM_custom_motions             = {'h': 'h', 'l': 'l', 'k': 'k', 'j': 'j', 'H': '0', 'L': '$', 'e': 'e'}
let g:VM_maps['i']                  = 'i'
let g:VM_maps['I']                  = 'I'
let g:VM_maps['Find Under']         = '<C-i>'
let g:VM_maps['Find Subword Under'] = '<C-i>'
let g:VM_maps['Find Next']          = ''
let g:VM_maps['Find Prev']          = ''
let g:VM_maps['Remove Region']      = 'q'
let g:VM_maps['Skip Region']        = '<c-k>'
let g:VM_maps["Undo"]               = 'u'
let g:VM_maps["Redo"]               = '<C-r>'
noremap <leader>sa <Plug>(VM-Select-All)
]])
	end
}
