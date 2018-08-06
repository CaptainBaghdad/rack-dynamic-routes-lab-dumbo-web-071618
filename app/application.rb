class Application
  def call(env)
    res = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      item = req.path.split('/items/').last
      item_hash = Item.all.detect {|item| item_hash.name == item}
      if item_hash 
        res.write item_hash.price
      else
        res.write 'Item not found'
        res.status = 400
      end
    else
      res.write 'Route not found'
      res.status = 404
    end

    res.finish
  end
end