When("I click {string} link") do |string|
    click_on string
end
  
 When("I fill in {string} with {string}") do |field, input|
    fill_in Field,	with: value
end
  
When("I click {string} button") do |value|
    click_on value
end
  
Then("I should be on {string} page") do |string|
    expect(page).to 
end