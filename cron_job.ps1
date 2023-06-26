# search for fetch_news_api_json.ps1 script
$pathToNewsFetchApiScript = "/path/to/news_api_fetch_via_powershell"
$powershellFetchApiScript = Get-ChildItem $pathToNewsFetchApiScript -Include "fetch_news_api_json.ps1" -File -recurse -ErrorAction SilentlyContinue 

# set trigger properties
$T = @{
    Frequency="Weekly"
    At="9:00PM"
    DaysOfWeek="Monday"
    Interval=2
}

# set option properties
$O = @{
    WakeToRun=$true
    StartIfNotIdle=$false
    MultipleInstancePolicy="Queue"
}

# register job
Register-ScheduledJob -Trigger $T -ScheduledJobOption $O -Name UpdateVersion -FilePath "$powershellFetchApiScript.FullName"