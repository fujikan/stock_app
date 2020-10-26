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