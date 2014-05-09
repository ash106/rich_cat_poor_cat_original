collection @cats => 'cats'
attributes :id, :finances
node(:image_url) { |cat| cat.image.url(:medium) }