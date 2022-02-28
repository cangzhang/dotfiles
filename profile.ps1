Invoke-Expression (&starship init powershell)

# fnm env --use-on-cd | Out-String | Invoke-Expression
Import-Module git-aliases -DisableNameChecking

Invoke-Expression (& {
    $hook = if ($PSVersionTable.PSVersion.Major -lt 6) { 'prompt' } else { 'pwd' }
    (zoxide init --hook $hook powershell) -join "`n"
  })


# Chocolatey profile
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}


Set-ExecutionPolicy -Scope CurrentUser RemoteSigned
Import-Module PSReadLine

$env:LC_ALL = 'C.UTF-8'
