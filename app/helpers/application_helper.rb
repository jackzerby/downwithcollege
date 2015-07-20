module ApplicationHelper
  
  def is_mobile?
    request.env['HTTP_USER_AGENT'].downcase.match(/android|iphone/)
  rescue NoMethodError # e.g. when no user agent is specified
    false
  end
end
