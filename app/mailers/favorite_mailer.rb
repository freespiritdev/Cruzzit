class FavoriteMailer < ApplicationMailer
  default from: "help@cruzzit.com"

  def new_comment(user, post, comment)
 
     # New Headers
     headers["Message-ID"] = "<comments/#{comment.id}@cruzzit.com>"
     headers["In-Reply-To"] = "<post/#{post.id}@cruzzit.com>"
     headers["References"] = "<post/#{post.id}@cruzzit.com>"
 
     @user = user
     @post = post
     @comment = comment
 
     mail(to: user.email, subject: "New comment on #{post.title}")
   end
end
