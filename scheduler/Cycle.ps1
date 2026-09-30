$root=Split-Path -Parent $PSScriptRoot
$state=Get-Content "$root\scheduler\state.json" -Raw | ConvertFrom-Json
if(-not $state.enabled -or $state.state -ne 'RUN') {
  Add-Content "$root\scheduler\scheduler.log" "$(Get-Date -Format o) STOP gate - no work executed"
  exit 0
}
Add-Content "$root\scheduler\scheduler.log" "$(Get-Date -Format o) RUN gate - cycle admitted"
# Development jobs are added here. Every job must remain below this gate.

