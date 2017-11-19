function Get-Model()
{
    Param(
        [parameter(mandatory = $true)]
        [string]$url,

        [parameter(mandatory = $true)]
        [string]$apiKey
    )

    $result = Invoke-Method -URi "$url/api/v1/models" `
        -Method GET `
        -Token $apiKey

    $result
}
