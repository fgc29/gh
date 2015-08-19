
module Features
  def fill_form
    fill_in "name", with: "First_name Last_name"
    fill_in "email", with: "example@gmail.com"
  end
end
