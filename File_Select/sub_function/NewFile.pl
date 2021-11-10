#ディレクトリにある、最新ファイル名を出力する

#パッケージ名定義
package NewFile_select;

sub search{
	
	#ディレクトリパス指定(パス)
	my $dir = "【　ここにディレクトリのパス記入(フルパス必須)　】";
	print "⇒指定ファイルは以下になる\n";
	print "⇒$dir\n";

	#===================ファイル名取得=======================	
	#ディレクトリ配下のファイル名取得[拡張子txtのみ取得]	
	my @files = glob "$dir/*.txt";
	#ファイル確認(デバック用)	
	for ( $i=0; $i<@files; $i++ ){
		print "@files[$i]\n";
		#===========ファイル情報取得====================
		#stat[9]最終更新日を数値化[配列を2次元配列にする]
		@files[$i]->[0] = (stat (@files[$i]))[9];
		print "stat処理後:@files[$i]->[0]\n";
	}

	#===================ソート処理===================
	#my @sortedFiles = sort({$filesHash{$a} cmp $filesHash{$b}} @files);
	my @sortedFiles = sort{$b->[0] cmp $a->[0]} @files;


	print "⇒最新ファイルは以下になる\n";
	print "⇒@sortedFiles[0]\n";
}

1
