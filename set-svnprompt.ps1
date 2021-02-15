Import-Module './posh-svn.psd1'
function prompt {
    $realLASTEXITCODE = $LASTEXITCODE

    Write-Host($pwd) -nonewline
    Write-VcsStatus

    $global:LASTEXITCODE = $realLASTEXITCODE
    return "> "
}