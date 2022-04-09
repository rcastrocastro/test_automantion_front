class HomePage
  include Capybara::DSL

  def home
    visit '/'
  end
end
