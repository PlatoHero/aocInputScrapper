$Year = <#insert year here#>
$Day = <#insert day here#>
$url = "https://adventofcode.com/$Year/day/$Day"
$initialWR = Invoke-WebRequest $url -SessionVariable ForCookies
$InputURL = "$Url/input"
$Headers = @{
Cookie = "<#insert cookie here#>"
UserAgent = "github.com/PlatoHero/aocInputScrapper by platozp@gmail.com"
}
$PuzzleInput = (Invoke-WebRequest $InputURL  -Headers $Headers  -SessionVariable $ForCookies).Content -split "`n"
