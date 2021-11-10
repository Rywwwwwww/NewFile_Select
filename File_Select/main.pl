#ディレクトリを選択し、最新ファイル名を出力する

print "処理開始します\n";

#呼び出すファイルパス
require "./sub_function/NewFile.pl";
#関数呼び出し
NewFile_select::search();

print "処理終了します\n";
