# posh-svn

** This readme is under heavy work, just started to modify it, much based on the posh-git readme.

Table of contents:

- [Overview](#overview)
- [Versions](#versions)
- [Installation](#installation)
- [Using posh-svn](#using-posh-svn)
- [Svn status summary information](#svn-status-summary-information)
- [Customization variables](#customization-variables)
- [Customizing the posh-svn prompt](#customizing-the-posh-svn-prompt)
- [Based on work by](#based-on-work-by)

## Overview

posh-svn is a PowerShell module that integrates Svn and PowerShell by providing Svn status summary information that
can be displayed in the PowerShell prompt, e.g.:

C:\Users\xjodaf\svn\posh-svn [trunk@123 +0 ~1 -0 | +0 ~1 -0 !]> 

posh-svn also provides tab completion support for common Svn commands, branch names, paths and more.
For example, with posh-svn, PowerShell can tab complete Svn commands like `checkout` by typing `svn ch` and pressing
the <kbd>tab</kbd> key. That will tab complete to `svn checkout` and if you keep pressing <kbd>tab</kbd>, it will
cycle through other command matches such as `changelist`. 

## Versions

### posh-svn v0.1

Forked from forked from TSYS-Merchant/posh-svn, with an attempt to get this working properly.

#### Releases

No releases yet

### Prerequisites

Before installing posh-svn make sure the following prerequisites have been met.

1. Windows PowerShell 5.x or PowerShell Core 6.0.
   You can get PowerShell Core 6.0 for Windows, Linux or macOS from [here][pscore-install].
   Check your PowerShell version by executing `$PSVersionTable.PSVersion`.

2. On Windows, script execution policy must be set to either `RemoteSigned` or `Unrestricted`.
   Check the script execution policy setting by executing `Get-ExecutionPolicy`.
   If the policy is not set to one of the two required values, run PowerShell as Administrator and
   execute `Set-ExecutionPolicy RemoteSigned -Scope CurrentUser -Confirm`.

3. Svn must be installed and available via the PATH environment variable.
   Check that `svn` is accessible from PowerShell by executing `svn --version` from PowerShell.
   If `svn` is not recognized as the name of a command, verify that you have Svn installed.
   If not, install Svn from [https://tortoisesvn.net/downloads.html](https://tortoisesvn.net/downloads.html).
   **NOTE** The svn.exe CLI program is an optional install that must be selected when installing TortoiseSvn.
   If you have Svn installed, make sure the path to Svn is in your PATH environment variable.

### Installing posh-svn Manually

If you need to test/debug changes prior to contributing here, or would otherwise prefer to install posh-svn without
the aid of a package manager, you can execute `Import-Module <path-to-src\posh-svn.psd1>`.  For example, if you
have Svn cloned posh-svn to `~\svn\posh-svn` you can import this version of posh-svn by executing
`Import-Module ~\svn\posh-svn\src\posh-svn.psd1`.

## Using posh-svn

After you have installed posh-svn, you need to configure your PowerShell session to use the posh-svn module.

### Step 1: Import posh-svn

The first step is to import the module into your PowerShell session which will enable Svn tab completion.
You can do this with the command `Import-Module posh-svn` or `Import-Module ~\svn\posh-svn\src\posh-svn.psd1`
for manual installation.

### Step 2: Import posh-svn from your PowerShell profile

You do not want to have to manually execute the `Import-Module` command every time you open a new PowerShell prompt.
Let's have PowerShell import this module for you in each new PowerShell session.
We can do this by editing your PowerShell profile script and adding the command `Import-Module ~\svn\posh-svn\src\posh-svn.psd1`.

If you want posh-svn to be available in all your PowerShell hosts (console, ISE, etc) then edit the $profile file
and add a line containing `Import-Module posh-svn`.


```powershell
Import-Module ~\svn\posh-svn\src\posh-svn.psd1
```

Save the profile script, then close PowerShell and open a new PowerShell session.
Type `svn co` and then press <kbd>tab</kbd>. If posh-svn has been imported, that command should tab complete to
`svn commit`.

## Svn status summary information

The Svn status summary information provides a wealth of "Svn status" information at a glance, all the time in your
prompt.

By default, the status summary has the following format:

    [{trunk/branch@revision} S +A ~B -C !D | +E ~F -G !H W]

## Customization variables

TODO

## Customizing the posh-svn prompt

TODO

### Prompt Layouts

TODO

### Displaying Error Information

TODO

### $SvnPromptScriptBlock

TODO

## Based on work by

- Jeremy Skinner, http://www.jeremyskinner.co.uk/

