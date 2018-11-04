"dein Scripts-----------------------------
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif
 "入れたいプラグインを書く
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/neomru.vim')
  call dein#add('Shougo/neocomplete.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
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
