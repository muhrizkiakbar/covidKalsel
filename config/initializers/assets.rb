# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.

Rails.application.config.assets.paths << Rails.root.join('node_modules')
# Rails.application.config.assets.precompile += %w[ckeditor/config.js]
Rails.application.config.assets.precompile += %w( application.css application.js ckeditor/* )
Rails.application.config.assets.precompile += %w( loader.js )
Rails.application.config.assets.precompile += %w( highcharts.js )
Rails.application.config.assets.precompile += %w( chartkick.js )
Rails.application.config.assets.precompile += %w( cov-kalsel-map.js )
Rails.application.config.assets.precompile += %w( custom.js )
Rails.application.config.assets.precompile += %w( argon/argon.js )
# Rails.application.config.assets.precompile += %w( ckeditor/*)

# Rails.application.config.assets.paths << Rails.root.join("app", "assets", "fonts")

# Rails.application.config.assets.paths << Rails.root.join('vendor/assets/stylesheets')
# Rails.application.config.assets.precompile << /\.(?:svg|eot|woff|ttf)\z/
# Rails.application.config.assets.precompile += %w( '.ttf' )
# Rails.application.config.assets.precompile += %w( '.eot' )
# Rails.application.config.assets.precompile += %w( '.woff' )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
