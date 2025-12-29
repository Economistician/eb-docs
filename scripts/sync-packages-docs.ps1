$ErrorActionPreference = "Stop"

Write-Host "Syncing package docs into docs/packages/ ..."

# Repo roots (relative to eb-docs)
$targets = @(
  @{ Name = "eb-metrics";    Source = "external/eb-metrics/docs";    Dest = "docs/packages/eb-metrics" },
  @{ Name = "eb-evaluation"; Source = "external/eb-evaluation/docs"; Dest = "docs/packages/eb-evaluation" },
  @{ Name = "eb-adapters";   Source = "external/eb-adapters/docs";   Dest = "docs/packages/eb-adapters" }
)

# Ensure parent folder exists
New-Item -ItemType Directory -Force -Path "docs/packages" | Out-Null

foreach ($t in $targets) {
  $name = $t.Name
  $src  = $t.Source
  $dst  = $t.Dest

  if (-not (Test-Path $src)) {
    throw "Source docs path not found for ${name}: ${src}. Did you init submodules?"
  }

  # Clean destination folder
  if (Test-Path $dst) {
    Remove-Item -Recurse -Force $dst
  }
  New-Item -ItemType Directory -Force -Path $dst | Out-Null

  # Copy docs into destination
  Copy-Item -Recurse -Force (Join-Path $src "*") $dst

  Write-Host "  - Synced ${name} docs: ${src} -> ${dst}"
}

Write-Host "Done."
