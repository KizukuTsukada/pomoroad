if @post.content.length > 100
  json.content @post.content.truncate(100)
  json.group_id @post.group_id
else
  json.content @post.content
end
json.id @post.id
json.created_at @post.created_at.strftime("%Y-%m-%d %H:%M")