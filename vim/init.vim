"#####Python#####
if has('win32')
  	let g:python3_host_prog = $Python3_Path
	let g:python_host_prog = $Python2_Path
else
		let g:python_host_prog=$PYENV_ROOT.'/versions/neovim-2/bin/python'
		let g:python3_host_prog=$PYENV_ROOT.'/versions/neovim-3/bin/python'
		"let g:python3_host_prog = $PYENV_ROOT . '/shims/python3'
		"let g:python_host_prog = $PYENV_ROOT . '/shims/python2'
		 "let g:python3_host_prog = '/usr/local/bin/python3'
		"let g:python_host_prog = '/usr/local/bin/python2'
endif
"
"dein Scripts-----------------------------

" vimrc に以下のように追記

" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.cache/dein')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  if has('win32')
  	 execute 'set runtimepath^=' . s:dein_repo_dir
  else
 	 execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
  endif
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  if has('win32')
  	let g:rc_dir    = expand('~/vimfiles/rc')
  else
  	let g:rc_dir    = expand('~/.vim/rc')
  endif
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  "nvimの場合dein_nvim.toml,dein_nvim_lazy読込み
  if has('nvim')
  	 let s:nvim_toml = g:rc_dir . '/dein_nvim.toml'
	 let s:nvim_lazy_toml = g:rc_dir . '/dein_nvim_lazy.toml'
  endif

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  "nvimの場合
  if has('nvim')
  	 call dein#load_toml(s:nvim_toml, {'lazy': 0})
	 call dein#load_toml(s:nvim_lazy_toml, {'lazy': 1})
  endif

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

"#####基本設定#####

set fenc=utf-8 "文字コードをUTF-8に
set autoread "編集中ファイルが変更されたら自動で読み直し
set hidden "バッファが編集中でもその他のファイルを開けるように
set showcmd "入力中のコマンドをステータスに表示

"#####表示設定#####
set number "行番号表示
set title "編集中ファイル表示
set showmatch "括弧入力時対応する括弧を表示
syntax on "コード色分け
set tabstop=4 "インデントをスペース4つぶんに
set smartindent "オートインデント
set cursorline "現在行強調表示
set cursorcolumn "現在行強調表示(縦)
set virtualedit=onemore "行末の1文字先までカソール移動可能に
set laststatus=2 "ステータスラインを常に表示
set wildmode=list:longest "コマンドラインの補完

"#####検索設定#####
set ignorecase "大文字/小文字区別なし
set smartcase "検索文字列に大文字が含まれている場合区別する
set wrapscan "検索時に最後まで行ったら最初に戻る

"#####neocomplete, neosnippetの設定#####
if dein#is_sourced('neocomplete.vim')
		"起動時に有効化
		let g:neocomplete#enable_at_setup = 1
		"smartcase有効化
		let g:neocomplete#enable_smart_case = 1
		"3文字以上の単語に有効化
		let g:neocomplete#min_keyword_length = 3
		"区切り番号まで補完
		let g:neocomplete#enable_auto_delimiter = 1
		"1文字目から補完ポップアップ表示
		let g:neocomplete#auto_completion_start_length = 1
		"バックスペースで補完ポップアップを閉じる
		inoremap <expr><BS> neocomplete#smart_close_popup()."<C-H>"
		"エンターキーで保管候補の決定。スニペット展開もエンターキーで確定
		imap <expr><CR> neosnippet#expandable() ? "<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "<C-y>" : "<CR>"
		"タブキーで保管候補選択。スニペット内のジャンプもタブキーでジャンプ
		imap <expr><TAB> pumvisible() ? "<C-n>" : neosnippet#jumpable() ? "<Plug>(neosnippet_expand_or_jump)" : "<TAB>"
endif

"#####NeoVim限定#####
if has('nvim')

endif
