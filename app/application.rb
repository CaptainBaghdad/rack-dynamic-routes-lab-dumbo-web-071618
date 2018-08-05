class Application 
    @@items = []
   def call(env)
      req = Rack::Request
      res = Rack::Response 
      if req.path.match(/items/)
        ans = req.params["item"]
        if @@items.include?(ans)
          res.write "#{res.price}"
        
      else 
        res.status = 400
      end 
    end 
      
     res.finish
   end 
   
   
  
end 