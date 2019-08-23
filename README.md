# README


## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|integer|null: false|
|image|string|

### Association
- has_many :groups
- has_many :photos



## groupsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|user_id|references|foreign_key: true|

### Association
- has_many :posts
- belongs_to :user



## postsテーブル
|Column|Type|Options|
|------|----|-------|
|content|text|null: false|
|user_id|references|foreign_key: true|
|group_id|references|foreign_key: true|

### Association
- belongs_to :user
- belongs_to :group

<img width="857" alt="スクリーンショット 2019-08-23 15 11 02" src="https://user-images.githubusercontent.com/49134272/63571050-fe71c000-c5b9-11e9-946e-2cb1ca755032.png">
