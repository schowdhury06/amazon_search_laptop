class HomePage < SitePrism::Page
  set_url "https://www.amazon.com/"
  
  element :search_field, "#twotabsearchtextbox"
  element :search_button, :xpath, "//*[@id='nav-search']/form/div[2]/div/input"
  element :under_500, :xpath, "//*[@id='ref_2421885011']/li[1]/a/span[1]"
  element :mac_os_x, :xpath, "//*[@id='ref_562215011']/li[1]/a/span[1]"
  
  
  def search(search_term)
    search_field.send_keys(search_term)
    search_button.click
  end
  
end