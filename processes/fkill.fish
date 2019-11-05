function fkill
	ps -ef | sed 1d | fzf -m | awk '{print $2}' | read aaa; or set -e aaa
	if set -q aaa
		kill -9 $aaa
	end
end

