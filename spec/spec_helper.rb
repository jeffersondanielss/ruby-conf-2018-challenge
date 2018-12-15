files = File.expand_path('./app/**/*.rb')

Dir[files].each { |path| require path }
