# auto siwtch gh profile
function __switch_gh_profile --on-variable PWD --description 'switch gh profile on directory change'
  set current_dir (pwd)
  set work_dir $HOME/work

  if string match -q "$work_dir*" $current_dir
    gh profile switch gb
  else
    gh profile switch al
  end
end

alias hub="GITHUB_TOKEN=xxxx /opt/homebrew/bin/hub"
