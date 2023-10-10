class Elements
  include Capybara::DSL

  def a
    return find("#column-a")
  end

  def b
    return find("#column-b")
  end
end
