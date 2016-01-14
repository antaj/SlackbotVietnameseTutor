# only run this when we launch a Rails server
# skip if running via generator, console, etc
if defined?(Rails::Server)
  Thread.abort_on_exception = true
  Thread.new do
    LanguageBot.run
  end
end