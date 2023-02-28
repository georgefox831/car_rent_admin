Rack::Attack.safelist_ip("216.128.181.214")

Rack::Attack.safelist("mark any authenticated access safe") do |request|
    # Requests are allowed if the return value is truthy
    request.env["HTTP_APIKEY"] == "secret-string"
end

Rack::Attack.safelist('allow from localhost') do |req|
    # Requests are allowed if the return value is truthy
    '127.0.0.1' == req.ip || '::1' == req.ip
end

Rack::Attack.blocklist_ip("216.128.181.214")

Rack::Attack.blocklist("block all access to admin") do |request|
    # Requests are blocked if the return value is truthy
    puts "-------------------------------------------------------------"
    request.path.start_with?("/admin")
end
  
  Rack::Attack.blocklist('block bad UA logins') do |req|
    req.path == '/login' && req.post? && req.user_agent == 'BadUA'
end