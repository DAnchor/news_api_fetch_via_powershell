# thread timeout
function Set-Timeout() 
{
    Write-Output "Thread sleep... `n"
    Start-Sleep -Milliseconds 2000
}

function Sync-NewsApi()
{
    # setting security protocol
    Write-Output "Setting secure connection protocol`n"
    [Net.ServicePointManager]::SecurityProtocol = "tls12, tls11, tls"

    # set NewsAPI key
    $apiKey = "api key"

    # set path to current script location, otherwise search times can be way to long
    $pathToNewsFetchApiScript = "/path/to/powershell/news_api_fetch_via_powershell"

    # creating path
    Write-Output "Searching for fetched_news_api_response folder...`n"
    $testPath=Test-Path "fetched_news_api_response"
    if (!$testPath) { New-Item -Path . -Name "fetched_news_api_response" -type "Directory" }
    $AbsolutePathDeploy = Get-ChildItem $pathToNewsFetchApiScript -recurse -ErrorAction SilentlyContinue | Where-Object { $_.PSIsContainer -eq $true -and $_.Name -match "fetched_news_api_response" }
    Set-Timeout


    # fetching web response
    Write-Output "Invoke web request in progress...`n"
    $WebResponseUs = Invoke-WebRequest "https://newsapi.org/v2/top-headlines?country=us&category=general&apiKey=$apiKey"
    $WebResponseIe = Invoke-WebRequest "https://newsapi.org/v2/top-headlines?country=ie&category=general&apiKey=$apiKey"
    $WebResponseUk = Invoke-WebRequest "https://newsapi.org/v2/top-headlines?country=gb&category=general&apiKey=$apiKey"
    Set-Timeout

    # changing directory in order to create fetched json files
    Write-Output "Changing directory to deploy: $AbsolutePathDeploy.FullName"
    Set-Location $AbsolutePathDeploy.FullName
    Set-Timeout

    # writing web response into deploy json files
    Write-Output "Parsing fetched web request into deploy environment json files...`n"
    $WebResponseUs.Content > us_web_fetch_response.json
    $WebResponseIe.Content > ie_web_fetch_response.json
    $WebResponseUk.Content > uk_web_fetch_response.json

    # exit
    Write-Output "Host has finished its fetch job, exiting now...`n"
    Exit-PSSession
}

Sync-NewsApi
