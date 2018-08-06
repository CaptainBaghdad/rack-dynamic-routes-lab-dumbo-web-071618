class Application 
   
   def call(env)
      req = Rack::Request.new(env)
      res = Rack::Response.new 
      if req.path.match(/items/)
      ans = req.params.split('/item/').last
      the_item = Item.all.find {|ele| ele.name == ans}
      if the_item 
         res.write.the_item.price
         
       else 
         res.write 'Item not found'
        res.status = 400
      end
    else
      res.write 'Route not found'
      res.status = 404
    end

      end 
      res.write "#{ans}" 
        
     end 
      
     res.finish
   end 
   
   
  
end 