# config.ru
require 'rack'

class MiPrimeraWebApp
  def call(env)
    [200, { 'Content-Type' => 'text/html' }, [File.read('index.html')]]
  end
end

run MiPrimeraWebApp.new
