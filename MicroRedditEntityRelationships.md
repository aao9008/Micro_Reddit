# Entity Relationships

### User
username:string [unique, present]
email:string [unique, present]
password:string [6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime

has_many posts
has_many comments

### Post
title:string [present]
content:text [present]
post_url:string [present, unique]
user_id: integer [present, unique, foreign_key]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
has_many comments

### Comment
user_id:integer [present, unique, foreign_key]
post_id:integer [present, unique, foreign_key]
content:string [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
belongs_to pin