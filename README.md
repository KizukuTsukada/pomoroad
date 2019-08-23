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

https://user-images.githubusercontent.com/49134272/63570612-ca49cf80-c5b8-11e9-8ce2-5635ddc5a12d.png
