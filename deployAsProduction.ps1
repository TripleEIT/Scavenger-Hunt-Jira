Write-Host "Performing Lint with fix"
forge lint --fix

Write-Host "Performing Deploy"
forge deploy -e production

write-host "Performing Install for Jira"
forge install --upgrade --confirm-scopes -e production -s 'tripleeit.atlassian.net' -p 'Jira'

write-host "Performing Install for Confluence"
forge install --upgrade --confirm-scopes -e production -s 'tripleeit.atlassian.net' -p 'Confluence'