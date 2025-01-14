
#github API
$releases = "https://api.github.com/repos/lierdakil/pandoc-crossref/releases/latest"

function global:au_GetLatest {
    $json = (Invoke-WebRequest $releases -UseBasicParsing | ConvertFrom-Json);
    foreach ( $asset in $json.assets) {
        if ($asset.name -eq "pandoc-crossref-Windows.7z") { 
            echo $asset.browser_download_url;
            return @{ 
                Version        = $json.tag_name -replace "v" , "" -replace "a",""; # v0.3.9.0a→0.3.9.0
                URL32          = $asset.browser_download_url;
                ChecksumType32 = 'sha256'
            }
        }
    }
}

function global:au_BeforeUpdate { Get-RemoteFiles }
function global:au_AfterUpdate ($Package)  {
     Set-DescriptionFromReadme $Package -SkipFirst 1
}

function global:au_SearchReplace {
    @{
        "tools\chocolateyInstall.ps1" = @{
            "(^[$]url\s*=\s*)('.*')"        = "`$1'$($Latest.URL32)'"           #1
            "(?i)(^\s*checksum\s*=\s*)'.*'" = "`$1'$($Latest.Checksum32)'"      #2
        }
    }
}


Update-Package -ChecksumFor none
