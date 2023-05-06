#!/bin/pwsh

$root = $PSScriptRoot
$dockerFile = Join-Path $root 'Dockerfile'

$image = (docker build -q $root -f $dockerFile)
docker run --rm -i `
    -e HUGO_ENVIRONMENT="${env:HUGO_ENVIRONMENT}" `
    -e HUGO_ENV="${env:HUGO_ENV}" `
    -v ${root}:/source `
    -p 1313:1313 `
    $image @args
