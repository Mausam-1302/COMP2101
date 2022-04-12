Param ( [switch]$System , [switch]$Disks , [switch]$Network)

Import-Module Mausam

if ($System -eq $false -and $Disks -eq $false -and $Network -eq $false) {
	write-host "Insert Mausam-System for system information."
	write-host "Insert Mausam-Disks for disks information."
	write-host "Insert Mausam-Network for network information."	
	write-host "If no arguments found then it will display everything available here from a module."
	write-host "==================================================================================="	
    Mausam-System;    Mausam-Disks;    Mausam-Network;
}else {
    if ($System) {  Mausam-System }
    if ($Disks)  {  Mausam-Disks  }
    if ($Network){  Mausam-Network}
}