function CloseTerm(...)
	silent close
endfunction

function! lv#Term()
	tabedit
	terminal ++curwin
endfunction
