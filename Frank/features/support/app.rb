def reset_app_to_start_state
  text_fields_modified = frankly_map( "view:'UITextField'", "setText:", "" )
  raise "could not find text field" if text_fields_modified.empty?
end
