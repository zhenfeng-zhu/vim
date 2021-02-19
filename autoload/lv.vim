function CloseTerm(...)
	silent close
endfunction

function! lv#Term()
	tabedit
	if has('nvim')
		let options = {'on_exit': 'CloseTerm'}
		call termopen($SHELL, options)
		startinsert
	else
		terminal ++curwin
	end
endfunction
