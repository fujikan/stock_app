# README
This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:
* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions
* ...

# データベース設計

## Users
|種類|Column|Type|Options|
|:----|:----|:----|:----|
|ニックネーム|username|string|null false|
|メールアドレス|email|string|null: false, default: ""|
|パスワード|password|string|null: false, default: ""|
|プロフィール|profile|text|null false|
|画像|      |        | null: false  | ActiveStorage |
### Association
* has_many :stock

## Stocks
|種類|Column|Type|Options|
|:----|:----|:----|:----|
|棚番|title|string|null false|
|業務詳細|body|title|null false|
|画像|     |       | null: false  | ActiveStorage |
### Association
* belongs_to :uses
* ...


# Stocks

## アプリケーションの概要

.本アプリケーションは、投稿系アプリの応用で複数のユーザーの予定を共有できる業務予定投稿アプリとなっております。


## 本アプリケーションの制作意図

.私の前職では、タイトな環境の中、時間を割いて口頭で予定を確認し合うという不便で効率が悪いという問題がありました。
各担当者の予定をお互いに口頭で確認し合う環境だった為その都度時間を作ったり、また簡潔な口頭での確認だったのでお互いに
勘違いしてしまい、後と問題になってしまったりしていたました。
なので、各自の空き時間にそれぞれの担当者の予定が確認できるアプリがあれば効率よく業務が進められるなと思い本アプリケーションを作成しました。


## 各機能紹介

### 新規ユーザー登録機能
...ユーザー名、メールアドレス、パスワードを登録し、本アプリを使用できる様になります。
デモ動画
https://gyazo.com/223f16acc58297c36b2bbf796f4d5c70
### ユーザーログイン機能
...ユーザー自身が登録したメールアドレスとパスワードを入力しユーザー自身のページに遷移し、本アプリを使用できる様になります。
デモ動画
https://gyazo.com/a22a67decf7d97b09bfafee31b140043

### ユーザー一覧機能
...本アプリに登録している全てのユーザーの一覧を見る事ができます。
デモ動画
https://gyazo.com/31c8dc1452cf55e587cd0b975c49d294

### ユーザー詳細機能
...本アプリに登録している各ユーザーの細かな詳細情報を見ることができます。
デモ動画
https://gyazo.com/179ad6c4e833e01fce110227dc36b247

### ユーザー情報変種機能
...ユーザーの情報を編集ができます。
デモ動画
https://gyazo.com/58d557f50e3933784508aaaed72ff0c0
・他のユーザーの情報は編集できないこと
https://gyazo.com/1a41f24349ab598ff58f1a4b7c5c65c7

### 予定投稿機能
...ユーザーが予定を投稿することができます。
デモ動画
https://gyazo.com/49d3bcf8691eba027a7171ac77ae4ac8

### 予定一覧機能
...本アプリに登録している全てのユーザーの投稿した予定を見ることができます。
デモ動画
https://gyazo.com/0ebca7d0d99dbdf867dec4ed64768278

### 予定詳細機能
...本アプリに登録している各ユーザーの細かな予定の詳細情報を見ることができます。
デモ動画
https://gyazo.com/c1f7a526e56afa02a90657b0fa1d49e4

### 予定情報編集機能
...ユーザーが投稿した情報を編集することができます。
デモ動画
https://gyazo.com/c8d2bb55790e90e308ba3329d38df558

## 開発環境

.Ruby on Rails

## 今後実装したい機能
ユーザーの投稿に対して投稿に対する確認のコメントなどができる様に
コメント機能も追加とAWSで本番環境のデプロイをしたいと考えております。