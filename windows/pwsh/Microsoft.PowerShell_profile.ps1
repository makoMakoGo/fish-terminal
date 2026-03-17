Import-Module posh-git
oh-my-posh --init --shell pwsh --config "$env:POSH_THEMES_PATH\nord-minimal.omp.json" | Invoke-Expression

$env:HTTP_PROXY = "<LOCAL_PROXY_URL>"
$env:HTTPS_PROXY = "<LOCAL_PROXY_URL>"

& {
    $localNoProxy = @("localhost", "127.0.0.1", "::1")
    $existingNoProxy = @()

    if ($env:NO_PROXY) {
        $existingNoProxy += ($env:NO_PROXY -split ",")
    }

    if ($env:no_proxy) {
        $existingNoProxy += ($env:no_proxy -split ",")
    }

    $mergedNoProxy = @(
        ($existingNoProxy + $localNoProxy)
        | ForEach-Object { $_.Trim() }
        | Where-Object { $_ }
        | Select-Object -Unique
    )

    $env:NO_PROXY = ($mergedNoProxy -join ",")
    $env:no_proxy = $env:NO_PROXY
}

function pip {
    python -m pip @Args
}

function gemini {
    $envFile = Join-Path $HOME ".gemini\.env"

    if (Test-Path -LiteralPath $envFile) {
        foreach ($rawLine in Get-Content -LiteralPath $envFile -Encoding UTF8) {
            $line = $rawLine.Trim()
            if ($line.Length -eq 0) { continue }
            if ($line.StartsWith('#')) { continue }
            if ($line.StartsWith('export ')) { $line = $line.Substring(7).Trim() }

            $eq = $line.IndexOf('=')
            if ($eq -lt 1) { continue }

            $name = $line.Substring(0, $eq).Trim()
            $value = $line.Substring($eq + 1).Trim()

            if (
                ($value.StartsWith('"') -and $value.EndsWith('"')) -or
                ($value.StartsWith("'") -and $value.EndsWith("'"))
            ) {
                $value = $value.Substring(1, $value.Length - 2)
            }

            Set-Item -Path ("Env:{0}" -f $name) -Value $value
        }
    }

    $cmd = Get-Command gemini -CommandType Application,ExternalScript -ErrorAction Stop | Select-Object -First 1
    & $cmd.Source @Args
}

function ccc {
    $claudeDir = "$env:USERPROFILE\.claude"

    if (Test-Path $claudeDir) {
        $settingsFiles = Get-ChildItem -Path $claudeDir -Filter "settings*" -File

        if ($settingsFiles.Count -eq 0) {
            Write-Host "没有找到 settings 文件"
            return
        }

        Write-Host "选择配置文件:"
        for ($i = 0; $i -lt $settingsFiles.Count; $i++) {
            Write-Host "$($i + 1). $($settingsFiles[$i].Name)"
        }

        $choice = Read-Host "选择"

        if ($choice -match '^\d+$' -and [int]$choice -ge 1 -and [int]$choice -le $settingsFiles.Count) {
            $selected = $settingsFiles[[int]$choice - 1]
            Write-Host "执行: claude --dangerously-skip-permissions --settings $claudeDir\$($selected.Name)"
            & claude --dangerously-skip-permissions --settings "$claudeDir\$($selected.Name)"
        }
        else {
            Write-Host "无效选择"
        }
    }
    else {
        Write-Host "$claudeDir 目录不存在"
    }
}
