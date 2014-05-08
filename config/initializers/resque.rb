# config/initializers/resque.rb
if ENV["REDISCLOUD_URL"]
    uri = URI.parse(ENV["REDISCLOUD_URL"])
	Resque.redis = Redis.new host:uri.host, port:uri.port, password:uri.password
end