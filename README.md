sinatraアプリを動かすための環境構築レシピ

## 実行手順

- nginx設定ファイルのパスを指定

```
# ./install.sh
```

## unicorn起動

`$ bundle exec unicorn -E production -c unicorn.rb`