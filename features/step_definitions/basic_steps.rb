Given('I visit the page') do
    visit '/'
end

Given("I visit the landing page") do
    visit root_path
end
  
And ('I click on {string}') do |element|
    click_on(element)
end

And("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
end

Given("the following articles exists") do |table|
    table.hashes.each do |hash|
     FactoryBot.create(:article, hash)
    end
end