# About The Project
Powershell script that fetching latest news from NewsAPI, it is only allowed to fetch 100 requests per 24 hours, but with use of Powershell web-invoke and scheduled tasks news now are fetched directly into JSON files, from now on JSON files can be used by web-api's or apps in order to test WebAPI features in development mode without limits.

# Getting Started

First step is to acurre the api-key, therefore register with the NewsAPI on their official website:
<div align="left">
    <a href="https://newsapi.org/register" target="_blank">Click here to get NewsAPI key</a>
</div>

# Ubuntu run isntall Powershell (as a root user)

    -- Follow guidelines of how to install Powershell and run it within Ubuntu environment from Microsoft's documentaiton link below:
<a href="https://tinyurl.com/mw4u33ap" target="_blank">Microsoft's Powershell installation on Ubuntu Documentation</a>

## Ubuntu direct script run (locate news_api_fetch_via_powershell directory and run script from Terminal as current session user)

    -- pwsh
    -- ./fetch_news_api_json.ps1

## Ubuntu run script via Job Scheduler (locate news_api_fetch_via_powershell directory and run script from Terminal as current session user)

    -- pwsh
    -- ./cron_job.ps1

# Windows (open Powershell as preffered user and run)

    -- Set-ExecutionPolicy -ExecutionPolicy AllSigned -Scope CurrentUser

## Windows run script via Powershell directly (locate from news_api_fetch_via_powershell directory and run script from Powershell as current session user)

    -- .\fetch_news_api_json.ps1

## Windows run script via Job Scheduler (locate news_api_fetch_via_powershell directory and run from Powershell as current session user)

    -- .\cron_job.ps1

## Windows (locate execute_powershell_script.cmd directory and run it from Task Scheduler as any user)

    -- Follow guidelines of how to setup Task Scheduler from Microsoft's documentation link below:
<a href="https://tinyurl.com/47zh2bvs" target="_blank">Windows OS Task Scheduler Documentation</a>

<div align="left">
    <h3>Documentation links</h3>
    <ol>
        <li>
            <a href="https://newsapi.org/docs" target="_blank">NewsAPI Documentation</a>
        </li>
        <li>
            <a href="https://tinyurl.com/mw4u33ap" target="_blank">Microsoft's Powershell installation on Ubuntu Documentation</a>
        </li>
        <li>
            <a href="https://tinyurl.com/47zh2bvs" target="_blank">Windows OS Task Scheduler Documentation</a>
        </li>
    <ol>
</div>

