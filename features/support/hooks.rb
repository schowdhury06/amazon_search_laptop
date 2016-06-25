Before do
  Capybara.use_default_driver
end

After do
  puts 'in after'
end