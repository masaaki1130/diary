## usersテーブル

|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|text|null: false|
|password|text|null: false|
### Association
- has_many :coments
- has_many :massages

## massagesテーブル

|Column|Type|Options|
|------|----|-------|
|body|text||
|user|references|null: false,foreign_key: true|
### Association
- belongs_to :user

## comentsテーブル
|Column|Type|Options|
|------|----|-------|
|body|text||
|user|references|null: false,foreign_key: true|
### Association
- belongs_to :user