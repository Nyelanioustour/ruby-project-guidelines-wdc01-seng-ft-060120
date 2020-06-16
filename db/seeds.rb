User.destroy_all
Post.destroy_all
Like.destroy_all


User.create(username: "Bill")
User.create(username: "Steve")
User.create(username: "Jim")

Post.create(title: "Dogs rule", topic: "Dogs", body:"Cats poop in a box.",user_id: User.first.id)
Post.create(title: "Cats rule", topic: "Cats", body:"Dogs drool.",user_id: User.second.id)
Post.create(title: "People rock", topic: "People", body:"Source: Five O'Clock World by The Vogues.",user_id: User.third.id)

Like.create(user_id: User.first.id, post_id: Post.first.id)
Like.create(user_id: User.second.id, post_id: Post.second.id)
Like.create(user_id: User.third.id, post_id: Post.third.id)