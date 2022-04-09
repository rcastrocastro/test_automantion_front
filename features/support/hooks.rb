Before do
  @home = HomePage.new
  @unidade = UnidadePage.new
  page.driver.browser.manage.window.maximize
end

# metodo de configuracao do local onde sera salvo o screenshot
After do
  temp_shot = page.save_screenshot('log/temp_shot.png')
  screenshot = Base64.encode64(File.open(temp_shot, 'rb').read)
  attach(screenshot, 'image/png')
end

d = DateTime.now
@current_date = d.to_s.tr(':', '-')

# configuracao de report
at_exit do
  ReportBuilder.configure do |config|
    config.input_path = 'log/report.json'
    config.report_path = "'log/' + ' ' + #{@current_date}"
    config.report_types = [:html]
    config.report_title = 'Fleury - Saude ID'
    config.compress_image = true
    config.additional_info = { 'Aplicação' => 'Web', 'Data de execução' => @current_date }
    config.color = 'indigo'
  end
  ReportBuilder.build_report
end
