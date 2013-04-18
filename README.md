TDDBC for Ruby with RSpec
====================================

これは、TDDBCのRuby向けRSpecプロジェクトです。

## 動作確認環境
* ruby 2.0.0p0
* ruby 1.9.3p392

## セットアップ
```bash
gem install bundler
bundle install
```

`rspec` コマンドを実行して

```bash
$ rspec

Sample
  greeting
    should eq "Hello TDD BootCamp!"

Finished in 0.00059 seconds
1 example, 0 failures

Randomized with seed 29844
```

のようにテストが正常終了すればOKです。

## ライブラリ
### [guard](https://github.com/guard/guard)
`guard` コマンドを実行すると入力待ちの状態になるので、あとはファイルが変更される度にテストが実行されます

OSごとに下記のソフトを入れるとテスト結果がOS毎の通知欄に表示されます

#### Windows
notifu: http://www.paralint.com/projects/notifu/

#### Mac
growl: http://growl.info/

#### 他Unix系(Linux, FreeBSD, OpenBSD and Solaris)
libnotify: https://developer.gnome.org/libnotify/
