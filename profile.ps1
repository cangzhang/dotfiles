# @args you can pass multi arguments for example
# ga fileName1 fileName2 
function ga{git add @args}
function gcmsg { git commit -m @args }
function gac{git add .;git commit -m @args}
function gpm{git push origin master}
function gl{git pull}
function gco{git checkout @args}
function gst{git status @args}
function gp{git push @args}

Invoke-Expression (&starship init powershell)

Invoke-Expression (& { $hook = if ($PSVersionTable.PSVersion.Major -ge 6) { 'pwd' } else { 'prompt' } (zoxide init powershell --hook $hook | Out-String) })

oh-my-posh init pwsh --config 'C:\Users\al\.config\omp\config.toml' | Invoke-Expression
