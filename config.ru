require 'rack'
require "pry"

class App 
    def call(env)
       path = env["PATH_INFO"]
       if path == "/"
        [200, { "Content-Type" => "text/html"}, ["<h2>Hello <em>World</em>!<br>Leslie was here!</h2>"]]
       elsif path == "/potato"
       [200, { "Content-Type" => "text/html" }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
       else 
        [404, { "Content-Type" => "text/html"}, ["Page ain't found, bitch!"]]
       end 
    end
end

run App.new