#To make sure backbone recieves the right JSON format
ActiveRecord::Base.include_root_in_json = false

#To use the JST namespace when referring to Handlebars
HandlebarsAssets::Config.template_namespace = 'JST'