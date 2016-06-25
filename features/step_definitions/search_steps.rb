Given(/^I am on the homepage$/) do
  visit('https://www.amazon.com/')
  @home_page = HomePage.new
  @home_page.load
end

When(/^I search for "([^"]*)"$/) do |search_term|
  @home_page = HomePage.new
  @home_page.search(search_term)
end

Then(/^I should be directed to search result page$/) do
   @search_result_page = SearchResultPage.new
  expect(page.current_url).to start_with("https://www.amazon.com/s/")
end

When(/^the the search result comes in, I click mac os x option from operating list$/) do |macosx|
   @home_page.mac_os_x.click
end