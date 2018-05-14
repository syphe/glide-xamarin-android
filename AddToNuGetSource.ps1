Param(
    [string]$nugetPath,
    [string]$nugetSource,
    [string]$packageId,
    [string]$version
)

Invoke-Expression "$nugetPath pack .\glide.nuspec -Properties ""PackageId=$packageId;Version=$version"""
Invoke-Expression "$nugetPath add .\$packageId.$version.nupkg -source $nugetSource"