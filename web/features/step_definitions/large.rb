Entao("devo verificar se um elemento com id {string} existe no DOM") do |element_id|
  page.execute_script("window.scrollBy(0, 10000)")
  page.execute_script("window.scrollBy(10000, 0)")

  row_50 = find(".row-50")
  column_50 = row_50.find(".column-50")
  texto = column_50.text

  texto == element_id
end
