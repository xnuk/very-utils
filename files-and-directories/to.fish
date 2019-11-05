function to
  # if argument does not exist
  if not count $argv > /dev/null
    if not popd ^ /dev/null
      if type -q git
        # jump to git root or $HOME
        set -l __git_cdup (git rev-parse --show-cdup ^ /dev/null; or echo)
        if [ $__git_cdup = '' ]
          cd ..
          cd (git rev-parse --show-toplevel ^ /dev/null; or echo $HOME)
        else
          cd $__git_cdup
        end
      else
        cd $HOME
      end
    end

  # if argument is a file
  else if test -f $argv[1]
    cd (dirname $argv[1])
    eval $EDITOR (basename $argv[1])

  # if argument is a directory
  else
    cd $argv[1]
  end
  ls
end
