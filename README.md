# アプリ名

<p style="font-size: 23px">ポモ学</p>
http://52.68.146.89<br>
<br>

# テストユーザー
email: sample@gmail.com<br>
Pass : pppppp<br>
<br>

# 概要

25分間集中し5分間休憩することを最大４回繰り返すポモドーロ・テクニックという学習方法を使用した<br>
学習記録アプリです。<br>
タイマーを25分後にセットし、アラームが鳴ったら25分間で学んだことをアウトプットします。<br>
<br>
# 制作背景

Ruby on Railsを総合的に復習でき、且つ新技術に挑戦することができるアプリ制作だと考えました。<br>
また、従来のポモドーロ・テクニックを用いたアプリでは、２５分測り、「◯月◯日に学習した」という記録は
できますが、しっかりアウトプットまでできるアプリは見つかりませんでした。<br>
ポモドーロテクニックにアウトプットを合わせることでより深い知識の定着を図ることができると考えました。<br>
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

# 使用方法

ログイン後、[カリキュラムを追加する]より学習するタイトルを追加してください。<br>
<img width="200" alt="スクリーンショット 2019-08-24 12 48 39" src="https://user-images.githubusercontent.com/49134272/63632247-8fee3a00-c66d-11e9-83d7-8f756ea36978.png">

学習開始を押すとタイマーが出てきます。25分後の時刻に設定してください。
<br>
<img width="200" alt="timer" src="https://user-images.githubusercontent.com/49134272/63632220-43a2fa00-c66d-11e9-910f-cc0f3bf5ff53.png">

設定時刻になるとアラームが鳴ります。作業を止め25分で学んだことをアウトプットしてください。<br>
手を止めず書き続けることで定着具合がわかります。<br>
<img width="200" alt="output" src="https://user-images.githubusercontent.com/49134272/63632271-04c17400-c66e-11e9-9c27-853c5645ec62.png">

アウトプットした内容を振り返ることができます。<br>
<img width="200" alt="check" src="https://user-images.githubusercontent.com/49134272/63632280-24589c80-c66e-11e9-9ca5-16e99a097074.png">

# 今後の課題

①可読性の低いコードがあるためリファクタリングしていきます。<br>
②アウトプットをTwitterと同時投稿できるようにTwitterAPIの導入に挑戦したいと思っております。<br>
③お問い合わせフォームが見た目だけで機能していないため、機能を実装します。

# ER図
<img width="600" alt="スクリーンショット 2019-08-23 20 15 57" src="https://user-images.githubusercontent.com/49134272/63588996-e19db280-c5e2-11e9-9382-34b7eb1f2679.png">
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
