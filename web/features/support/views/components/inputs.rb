class Inputs
  include Capybara::DSL

  def num
    return find("input[type='number']")
  end
end
