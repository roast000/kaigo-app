# テーブル設計

## users テーブル

| Column                | Type   | Options                   |
| ------------------    | ------ | -----------------------   |
| nickname              | string | null: false               |
| email                 | string | null: false, unique: true |
| encrypted_password    | string | null: false               |
| work_history          | string | null: false               |

### Association

- has_many :questions
- has_many :question_comments
- has_many :information_comments

## questions テーブル (質問)

| Column                 | Type       | Options                       |
| ----------------       | ------     | -----------------             |
| question_text          | string     | null: false                   |
| kaigo_category_id      | integer    | null: false                   |
| user                   | references | null: false foreign_key: true |


### Association

- belongs_to :user
- has_many :question_comments

## question_comments テーブル (質問へのコメント)

| Column         | Type       | Options                           |
| ----------     | ------     | --------------------------------- |
| text           | text       | null: false                       |
| user           | references | null: false foreign_key: true     |
| question       | references | null: false foreign_key: true     |


### Association

- belongs_to :user
- belongs_to :question


## informations テーブル (介護情報)

| Column             | Type       | Options                        |
| ------------       | ---------- | ------------------------------ |
| information_title  | string     | null: false                    |
| information_text   | text       | null: false                    |
| kaigo_category_id  | integer    | null: false                    |

### Association

- has_many :information_comments

## information_comments テーブル (介護あるあるコメント)

| Column          | Type       | Options                        |
| ------------    | ---------- | ------------------------------ |
| comment         | string     | null: false                    |
|                 | string     | null: false                    |
| information     | references | null: false, foreign_key: true |
| user            | references | null: false, foreign_key: true |

### Association

- belongs_to :information
- belongs_to :user