<#
.SYNOPSIS
    A brief description of the script.
.DESCRIPTION
    A detailed description of the script.
.PARAMETER Logging
    Enables logging.
.PARAMETER LogFile
    The path to the log file.
.PARAMETER LogLevel
    The log level to use.
.PARAMETER DebugMode
    Enables debug mode. This will output additional information to the console.
.EXAMPLE
    <FunctionName> -Parameter1 'Value1' -Parameter2 'Value2'
    A description of the example.
.NOTES
    Additional information about the script.
.LINK
    URL to additional information.
#>
#Requires -Version 7.0
[CmdletBinding(
    SupportsShouldProcess = $true
)]
Param (
    [Parameter()]
    [switch]$Logging,

    [Parameter()]
    [string]$LogFile,

    [Parameter()]
    [switch]$DebugMode
)

Begin {

    Write-Verbose

    if ($Logging) {
        $Log = New-Object -TypeName System.Collections.ArrayList
    }

    if ($DebugMode) {
        $DebugPreference = 'Continue'
    }

    if ($PSCmdlet.ShouldProcess) {
        Write-Output 'ShouldProcess is supported.'
    }

    if ($PSCmdlet.ShouldContinue('Continue?', 'Continue?')) {
        Write-Output 'ShouldContinue is supported.'
    }


}
