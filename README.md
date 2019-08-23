# アプリ名

<p style="font-size: 23px">ポモ学</p>
http://52.68.146.89<br>

# 概要

25分集中し5分休憩するポモドーロ・テクニックを使用した学習記録アプリです。<br>
タイマーを25分後にセットし、アラームが鳴ったら25分間で学んだことをアウトプットします。<br>
<br>
# 制作背景

Ruby on Railsを総合的に復習でき、追加機能を足すことができるベストなアプリ制作だと考えました。<br>
また、スマホアプリではしっかりアウトプットまで出来るアプリはありません。<br>
ポモドーロ・テクニックにアウトプットの時間を合わせることで、より知識の定着をしやすくできると考えました。<br>
<br>
# テストユーザー
email: test@gmail.com<br>
Pass : pppppp<br>
<br>
# 使用言語・フレームワーク

### フレームワーク
Ruby on Rails<br>
<br>
### マークアップ
HTML/SASS<br>
<br>
### アラーム機能
Ruby<br>
<br>
### タイマー機能・投稿機能非同期通信<br>
JavaScript<br>
<br>
### モーダルウィンドウ・プロフィール画像プレビュー機能<br>
jQuery<br>
<br>

### デプロイ

AWS
<br><br><br>

# ER図
<img width="857" alt="スクリーンショット 2019-08-23 15 11 02" src="https://user-images.githubusercontent.com/49134272/63571050-fe71c000-c5b9-11e9-946e-2cb1ca755032.png">
<br>
<br>

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
