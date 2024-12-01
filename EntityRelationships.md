# Entity Relationships

## 1. Learning Platform

### Course
title:string [unique, present]
description:text [present]
id:integer
created_at:datetime
updated_at:datetime

has_many lessons

### Lesson
title:string [unique, present]
body:text [present]
course_id:integer [present, unique, foreign_key]
id:integer
created_at:datetime
updated_at:datetime

belongs_to course

## 2. Profile Tab

### Profile
user_id: integer [unique, present, foreign_key]
city:string [present]
state:string [present]
country:string [present]
age:int [present, range 13-100]
gender:string [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to :user

### User
username:string [unique, present]
email:string [unique, present]
id:integer
created_at:datetime
updated_at:datetime

has_one profile

## 3. Virtual pinboard

### User
username:string [unique, present]
email:string [unique, present]
password:string [6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime

has_many pins
has_many comments

### Pin
title:string [present]
description:text [present]
image_url:string [present, unique]
user_id: integer [present, unique, foreign_key]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
has_many comments

### Comments
user_id:integer [present, unique, foreign_key]
pin_id:integer [present, unique, foreign_key]
content:string [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
belongs_to pin

## 4. Hacker News
### User
username:string [unique, present]
email:string [unique, present]
password:string [6-16 chars, present]
id:integer
created_at:datetime
updated_at:datetime

has_many links
has_many comments

### Link
title:string [present]
description:string [present]
url:string [url_format]
user:id [present, unique, foreign_key]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
has_many comments as comentable

### Comment
user_id:integer [present, unique, foreign_key]
comentable_id:integer [unique, foreign_key]
commentable_id:integer [unique, foreign_key]
content:string [present]
id:integer
created_at:datetime
updated_at:datetime

belongs_to user
belongs_to commentable, polymorphic: true
has_many comments as comentable


