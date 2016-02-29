###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

# With alternative layout
# page "/path/to/file.html", layout: :otherlayout

# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", locals: {
#  which_fake_page: "Rendering a fake page with a local variable" }

# General configuration
# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end

compass_config do |config|
  config.output_style = :compact
end

#after_configuration do
  #@bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  ##sprockets.append_path File.join "#{root}", @bower_config["directory"]
#end

set :haml, { :ugly => true, :format => :html5 }
activate :directory_indexes

###
# Helpers
###

# Methods defined in the helpers block are available in templates
# helpers do
#   def some_helper
#     "Helping"
#   end
# end

# Google Analytics gem
#activate :google_analytics do |ga|
    #ga.tracking_id = 'UA-73700587-1'
    #ga.anonymize_ip = true

    ## Tracking across a domain and its subdomains (default = nil)
    ##ga.domain_name = 'example.com'

    ## Tracking across multiple domains and subdomains (default = false)
    #ga.allow_linker = false

    ## Tracking Code Debugger (default = false)
    #ga.debug = false

    ## Tracking in development environment (default = true)
    #ga.development = true

    ## Compress the JavaScript code (default = false)
    #ga.minify = true

    ## Output style - :html includes <script> tag (default = :html)
    #ga.output = :html
#end

# Build-specific configuration
configure :build do
   activate :minify_css
   activate :minify_javascript
end

# Middleman::Deploy
#activate :deploy do |deploy|
  #deploy.deploy_method = :git
  #deploy.remote   = 'pages'
  #deploy.branch   = 'master' # default: gh-pages
  ## deploy.strategy = :submodule      # commit strategy: can be :force_push or :submodule, default: :force_push
  ## deploy.commit_message = 'custom-message'      # commit message (can be empty), default: Automated commit at `timestamp` by middleman-deploy `version`
#end
