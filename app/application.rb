class Application 
   
   def call(env)
      req = Rack::Request.new(env)
      res = Rack::Response.new 
      if req.path.match(/items/)
      ans = req.params.split('/item/').last
      the_item = Item.all.find {|ele| ele.name == ans}
      if
      res.write "#{ans}" 
        
     end 
      
     res.finish
   end 
   
   
  
end 