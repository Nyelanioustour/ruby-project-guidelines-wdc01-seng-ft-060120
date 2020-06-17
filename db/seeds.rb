User.destroy_all
Post.destroy_all
Like.destroy_all
Tag.destroy_all
PostTag.destroy_all
UserTag.destroy_all

User.create(username: "Jim")
User.create(username: "Pam")
User.create(username: "Dwight")
User.create(username: "Michael")
User.create(username: "Oscar")

Post.create(title: "Dogs rule", topic: "Dogs", body:"Dogs are superior to cats!",user_id: User.first.id)
Post.create(title: "Cats rule", topic: "Cats", body:"Cats rule! Dogs drool.",user_id: User.second.id)
Post.create(title: "People rock", topic: "People", body:"Source: Five O'Clock World by The Vogues.",user_id: User.third.id)
Post.create(title: "Ford", topic: "Cars", body:"Fords Fixed Or Repaired Daily!",user_id: User.fourth.id)
Post.create(title: "Usain Bolt", topic: "Sports", body:"He is a world record holder in the 100 metres, 200 metres and 4 × 100 metres relay.",user_id: User.last.id)

Post.create(title: "Ford vs Ferarri", topic: "Movies", body:"In 1963, Ford Motor Company Vice President Lee Iacocca proposes to Henry Ford II to purchase the cash-strapped Ferrari as a means to boost their car sales by participating in the 24 Hours of Le Mans.",user_id: User.fourth.id)
Post.create(title: "Arrival", topic: "Movies", body:"Linguist Louise Banks is called to help when twelve extraterrestrial spacecraft silently hover over disparate locations around the Earth.",user_id: User.last.id)
Post.create(title: "Noctunal Animals", topic: "Movies", body:"Art gallery owner Susan Morrow receives the manuscript for a novel penned by her estranged ex-husband Edward Sheffield along with an invitation for dinner during Edward's upcoming visit to Los Angeles.",user_id: User.third.id)
Post.create(title: "The Band Perry", topic: "Music", body:"The Band Perry is a music group composed of siblings Kimberly Perry (lead vocals, guitar), Reid Perry (bass guitar, background vocals), and Neil Perry (mandolin, bouzouki, background vocals).",user_id: User.second.id)
Post.create(title: "School House Rocks", topic: "Television", body:"Schoolhouse Rock! is an American interstitial programming series of animated musical educational short films (and later, videos) that aired during the Saturday morning children's programming block on the U.S. television network ABC. It Rocks!",user_id: User.first.id)

Post.create(title: "Flatiron Rocks", topic: "School", body:"Flatiron school rocks! Cohort 2 commit 2 git are amazing coders!",user_id: User.first.id)



Like.create(user_id: 1, post_id: 2)
Like.create(user_id: 1, post_id: 3)
Like.create(user_id: 1, post_id: 4)
Like.create(user_id: 2, post_id: 1)
Like.create(user_id: 2, post_id: 10)
Like.create(user_id: 2, post_id: 11)
Like.create(user_id: 3, post_id: 11)
Like.create(user_id: 3, post_id: 1)
Like.create(user_id: 4, post_id: 11)
Like.create(user_id: 4, post_id: 7)
Like.create(user_id: 4, post_id: 5)
Like.create(user_id: 5, post_id: 11)
Like.create(user_id: 5, post_id: 2)
Like.create(user_id: 5, post_id: 2)

Tag.create(name: "Cars")
Tag.create(name: "Cats")
Tag.create(name: "Dogs")
Tag.create(name: "Movies")
Tag.create(name: "Music")
Tag.create(name: "Television")
Tag.create(name: "Birds")
Tag.create(name: "People")
Tag.create(name: "Sports")
Tag.create(name: "School")
Tag.create(name: "Coding")





PostTag.create(post_id: 1, tag_id: 3)
PostTag.create(post_id: 2, tag_id: 2)
PostTag.create(post_id: 3, tag_id: 8)
PostTag.create(post_id: 4, tag_id: 1)
PostTag.create(post_id: 5, tag_id: 8)
PostTag.create(post_id: 5, tag_id: 9)
PostTag.create(post_id: 6, tag_id: 1)
PostTag.create(post_id: 6, tag_id: 4)
PostTag.create(post_id: 7, tag_id: 4)
PostTag.create(post_id: 8, tag_id: 4)
PostTag.create(post_id: 9, tag_id: 5)
PostTag.create(post_id: 10, tag_id: 5)
PostTag.create(post_id: 10, tag_id: 6)
PostTag.create(post_id: 11, tag_id: 11)
PostTag.create(post_id: 11, tag_id: 10)
PostTag.create(post_id: 11, tag_id: 8)