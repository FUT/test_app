Dir[Rails.root.join('db', 'seeds', '*.rb')].each do |file|
  require file
end
