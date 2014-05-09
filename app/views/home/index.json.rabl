collection @cats => 'cats'
attributes :id, :finances
node(:image_url) { |cat| cat.image.url(:medium) }
node(:x) { |cat| cat.mask_params.split(', ').first if cat.mask_params }
node(:y) { |cat| cat.mask_params.split(', ').second if cat.mask_params }
node(:radius) { |cat| cat.mask_params.split(', ').third if cat.mask_params }