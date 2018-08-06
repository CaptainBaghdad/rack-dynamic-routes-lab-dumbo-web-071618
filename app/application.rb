class Application 
   
   def call(env)
      req = Rack::Request.new(env)
      res = Rack::Response.new 
      if req.path.match(/items/)
      ans = req.params.split('/item/').last
      res.write "#{ans}" 
        
     end 
      
     res.finish
   end 
   
   
  
end 