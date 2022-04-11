function qutec --wraps='nvim ~/.config/qutebrowser/config.py' --wraps='$EDITOR ~/.config/qutebrowser/config.py' --description 'alias qutec $EDITOR ~/.config/qutebrowser/config.py'
  $EDITOR ~/.config/qutebrowser/config.py $argv; 
end
