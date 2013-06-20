if defined?(HandlebarsAssets)
  HandlebarsAssets::Config.ember = true
end

=begin
  Ember looks for templates in the Ember.TEMPLATES JavaScript object which is provided to us with the handlebars_assets gem we setup in Part 1. We just need to tell the gem to compile for Ember. We can do this in config/initializers/handlebars_assets.rb
=end