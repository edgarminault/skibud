TranslationIO.configure do |config|
  config.api_key        = '512967849bc941819abaeaa2c7744c40'
  config.source_locale  = 'de'
  config.target_locales = ['en']

  # Uncomment this if you don't want to use gettext
  # config.disable_gettext = true

  # Uncomment this if you already use gettext or fast_gettext
  # config.locales_path = File.join('path', 'to', 'gettext_locale')

  # Find other useful usage information here:
  # https://github.com/translation/rails#readme
end
