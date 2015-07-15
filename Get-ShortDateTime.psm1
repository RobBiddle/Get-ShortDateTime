##########################################
# Robert D. Biddle
# Created - 03.07.2015
    <#
     
    .SYNOPSIS
    Module containing functions which output short Date/Time data
    #>
#
Function Get-ShortDate
{
    Param
    (
        [Parameter(Mandatory=$false)]
        [Switch]
        $FilenameCompatibleFormat
    )
    if($FilenameCompatibleFormat)
    {
        $($Date = Get-Date;$Date.ToShortDateString()).Replace("/","-")
    }
    Else
    {
        $Date = Get-Date;$Date.ToShortDateString()
    }
}
Function Get-ShortTime
{
    Param
    (
        [Parameter(Mandatory=$false)]
        [Switch]
        $FilenameCompatibleFormat
    )
    if($FilenameCompatibleFormat)
    {
        $($Time=get-date;$Time.ToShortTimeString()).Replace(":","-").Replace(" ","-")
    }
    Else
    {
        $Time = Get-Date;$Time.ToShortTimeString()
    }
}
Export-ModuleMember -Function * -Variable *
