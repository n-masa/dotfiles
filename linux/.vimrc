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
