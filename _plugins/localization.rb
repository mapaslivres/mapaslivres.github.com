# Generates date strings in localized languages

module DateFilter
  
  def localized_date_to_long_string(date)
    date.strftime("%d/%m/%Y") 
  end

end # DebugFilter

Liquid::Template.register_filter(DateFilter)