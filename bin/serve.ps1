param([int]$Port = 4000)

$ErrorActionPreference = 'Stop'
$siteRoot = Split-Path -Parent $PSScriptRoot
$workspaceRoot = [System.IO.Path]::GetFullPath((Join-Path $siteRoot '..\..'))
$localTools = Join-Path $workspaceRoot '.local-tools'
$portableRuby = Join-Path $localTools 'rubyinstaller-3.3.12-1-x64\bin'

# Prefer a normal Ruby installation; use the workspace runtime when necessary.
if (-not (Get-Command bundle -ErrorAction SilentlyContinue)) {
    if (-not (Test-Path -LiteralPath (Join-Path $portableRuby 'ruby.exe'))) {
        throw 'Ruby/Bundler is unavailable. Install Ruby with DevKit, then run bundle install.'
    }
    $env:PATH = $portableRuby + ';' + $env:PATH
    $env:Path = $env:PATH
    $env:GEM_SPEC_CACHE = Join-Path $localTools 'gem-spec-cache'
    $env:BUNDLE_USER_HOME = Join-Path $localTools 'bundle-home'
    $env:XDG_CACHE_HOME = Join-Path $localTools 'cache'
}

Push-Location $siteRoot
try {
    & ruby (Join-Path $PSScriptRoot 'serve.rb') serve --host 127.0.0.1 --port $Port --livereload --force_polling
    if ($LASTEXITCODE -ne 0) { throw "Jekyll exited with code $LASTEXITCODE." }
}
finally {
    Pop-Location
}
