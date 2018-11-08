Set-Location -Path $HOME
$patharray = @('.\AppData\Local\nvim','.\.cache\dein', '.\.emacs.d', '.\vimfiles\rc')

foreach($p in $patharray){
    if(Test-Path $p){
        
    }else{
        New-Item $p -ItemType Directory
    }
}

New-Item -Value '.\dotfiles\vim\.vimrc' -Path '.\' -Name '_vimrc' -ItemType SymbolicLink
New-Item -Value '.\dotfiles\vim\init.vim' -Path '.\AppData\Local\nvim' -Name 'init.vim' -ItemType SymbolicLink
New-Item -Value '.\dotfiles\vim\dein.toml' -Path '.\vimfiles\rc' -Name 'dein.toml' -ItemType SymbolicLink
New-Item -Value '.\dotfiles\vim\dein_lazy.toml' -Path '.\vimfiles\rc' -Name 'dein_lazy.toml' -ItemType SymbolicLink
New-Item -Value '.\dotfiles\vim\dein_nvim.toml' -Path '.\vimfiles\rc' -Name 'dein_nvim.toml' -ItemType SymbolicLink
New-Item -Value '.\dotfiles\emacs\init.el' -Path '.\.emacs.d' -Name 'init.el' -ItemType SymbolicLink