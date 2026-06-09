# Auto-sync Urban_Growth_Codes to GitHub
$repoPath = "C:\Users\Jiaqi Liang\Documents\Research\Urban_Growth_Codes"
Set-Location $repoPath

$status = git status --porcelain
if ($status) {
    $timestamp = Get-Date -Format "yyyy-MM-dd HH:mm"
    git add -A
    git commit -m "Auto-sync: $timestamp"
    git push origin main
    Write-Host "Synced to GitHub at $timestamp"
} else {
    Write-Host "Nothing to sync."
}
