Given(/^I want to see the app working$/) do
end

When(/^I visit (.*?)$/) do |page|
  visit path_to(page)
end

Then(/^I should see the flickr public photo feed$/) do
  page.should have_css(".item", :count => 15)
end

Then(/^I should see a paginator$/) do
  page.should have_css(".pagination", :count => 2)
end

When(/^I click an image$/) do
  all(".item .description a.desc-link").first.click
end

Then(/^I should see a larger version of the image$/) do
  within(".modal") do
    within(".modal-body") do
      find("img")
    end
  end
end

When(/^I filter with the tag "(.*?)"$/) do |tag|
  fill_in "search", :with => tag
  click_button "Search"
end

Then(/^I should see "(.*?)" items with that tag$/) do |count|
  page.should have_css(".item", :count => count)
end