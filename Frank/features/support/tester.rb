def verify_text_input_field_is_empty
  entered_text = frankly_map( "view:'UITextField'", 'text' )[0]
  entered_text.should be_empty
end
