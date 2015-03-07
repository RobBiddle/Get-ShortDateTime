##########################################
# Robert D. Biddle
# Created - 03.07.2015
    <#
     
    .SYNOPSIS
    Module containing functions which output short Date/Time data
    #>
#
Function Get-ShortDate{
$Date = Get-Date;$Date.ToShortTimeString()
}
Function Get-SimpleTime{
$Time = Get-Date;$Time.ToShortTimeString()
}
Export-ModuleMember -Function * -Variable *