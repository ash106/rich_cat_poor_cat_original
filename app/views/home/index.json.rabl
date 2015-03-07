collection @cats => 'cats'
attributes :id, :finances, :x, :y, :radius
node(:image_url) { |cat| cat.image.url(:medium) }