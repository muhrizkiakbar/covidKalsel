# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActionView::Base.field_error_proc = Proc.new do |html_tag, instance|
    "<div class=\"field_with_errors control-group error\">#{html_tag}</div>".html_safe
end