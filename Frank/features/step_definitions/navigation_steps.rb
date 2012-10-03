Given /^the application is in initial state$/ do
  reset_app_to_start_state
end

Given /^the text input field is empty$/ do
  verify_text_input_field_is_empty
end

Given /^I press the "([^\"]*)" button$/ do |mark|
  touch( "button marked:'#{mark}'" )
end

Then /^I should see the greeting "(.*?)"$/ do |expected_mark|
  wait_until(:timeout => 2, :message => "waited to see view marked '#{expected_mark}'") {
    view_with_mark_exists(expected_mark)
  }
end

Given /^I type '([^\"]*)' into the text input field$/ do |mark|
  text_fields_modified = frankly_map( "view:'UITextField'", "setText:", "#{mark}" )
  raise "could not find text field" if text_fields_modified.empty?
end
