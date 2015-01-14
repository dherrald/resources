function prompt {
    Write-Host "[" -nonewline -foregroundcolor Gray
    Write-Host "$Env:username" -nonewline -foregroundcolor Red
    Write-Host "] " -nonewline -foregroundcolor Gray	
    
    # Split path and write \ in a gray
    $pwd.Path.Split("\") | foreach {
        Write-Host $_ -nonewline -foregroundcolor Yellow
        Write-Host "\" -nonewline -foregroundcolor Gray
    }
 
    # Backspace last \ and write >
    Write-Host "`b>" -nonewline -foregroundcolor Gray
 
    return " "
}

$env:TERM = 'cygwin'
$env:LESS = 'FRSX'
