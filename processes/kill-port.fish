function kill-port
  if count $argv > /dev/null
    kill -9 (lsof -nP -i4TCP:$argv[1] -sTCP:LISTEN -t)
  end
end

