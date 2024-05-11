<#
    .SYNOPSIS
        Generates a new PowerShell module including the folder and file structure needed for a complete module.
    .DESCRIPTION
        This script will generate a new PowerShell module using the opinionated folder and file structure used at
        No Clocks.

        The script will create the following folder structure:


#>
[CmdletBinding()]
Param (
    [Parameter(Mandatory = $true)]
    [string]$ModuleName,
    [Parameter(Mandatory = $true)]
    [string]$Author,
    [Parameter(Mandatory = $true)]
    [string]$Description,
    [Parameter(Mandatory = $false)]
    [ValidateSet('2.0', '3.0', '4.0', '5.0', '6.0', '7.0')]
    [string]$PowerShellVersion = '7.0',
    [Parameter(Mandatory = $false)]
    [string]$RootPath = $PSScriptRoot
)

$TemplatePath = Join-Path -Path $PSScriptRoot -ChildPath 'Templates'
$ModulePath = Join-Path -Path $RootPath -ChildPath $ModuleName

$ModuleDirectory = Join-Path -Path $ModulePath -ChildPath 'src'
