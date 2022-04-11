function spc --wraps='nvim ~/.config/startpage/index.html' --wraps='$EDITOR ~/.config/startpage/index.html' --description 'alias spc $EDITOR ~/.config/startpage/index.html'
  $EDITOR ~/.config/startpage/index.html $argv; 
end
