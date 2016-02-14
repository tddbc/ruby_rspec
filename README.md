TDDBC for Ruby with RSpec
====================================

これは、TDDBCのRuby向けRSpecプロジェクトです。

[![Build Status](https://travis-ci.org/tddbc/ruby_rspec.svg?branch=master)](https://travis-ci.org/tddbc/ruby_rspec)

## 動作確認環境
* ruby 2.1以降

## セットアップ
```bash
gem install bundler
bundle install
```

`rspec` コマンドを実行して

```bash
$ rspec

Sample
  #say
    Using expect to
      should say 'Hello TDD BootCamp!'
    Using subject it should
      should eq "Yeah! TDD BootCamp!"

Finished in 0.00218 seconds (files took 0.1389 seconds to load)
2 examples, 0 failures
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
