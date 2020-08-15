class Application 
    def call(env)
        resp = Rack::Response.new 
        req = Rack::Request.new(env)

        if req.path.match(/items/)
            new_item = req.params["item"]
            if @@items.include?(item)
                new_item_title = req.path.split("/items/").last 
                find_item = @@items.find do |value| value.price
            end
            resp.write find_item   
            resp.finish  
        else  
            resp.write "item not found"
            "400 Error"
        end 
         
            
        end 
        resp.finish 
end 

end 

# class Application

#     @@items = ["Apples","Carrots","Pears"]
#     @@cart = [] 
  
#     def call(env)
#       resp = Rack::Response.new
#       req = Rack::Request.new(env)
  
#       if req.path.match(/items/)
#         @@items.each do |item|
#           resp.write "#{item}\n"
#         end
#       elsif req.path.match(/search/)
#         search_term = req.params["q"]
#         resp.write handle_search(search_term)
#       elsif req.path.match(/cart/)
#         if @@cart.empty? 
#           resp.write "Your cart is empty"
#         else 
#           @@cart.each do |item|
#             resp.write "#{item}\n"
#           end 
#         end   
#       elsif req.path.match(/add/)
#         item = req.params["item"]
#           if @@items.include?(item)
#             @@cart << item 
#             resp.write "added #{item}"
#           else  
#           resp.write "We don't have that item" 
#         end 
#       else
#         resp.write "Path Not Found"
#       end
#       resp.finish
#     end
  
#     def handle_search(search_term)
#       if @@items.include?(search_term)
#         return "#{search_term} is one of our items"
#       else
#         return "Couldn't find #{search_term}"
#       end
#     end
#   end



# class Application

#     @@songs = [Song.new("Sorry", "Justin Bieber"),
#               Song.new("Hello","Adele")]
  
#     def call(env)
#       resp = Rack::Response.new
#       req = Rack::Request.new(env)
  
#       if req.path.match(/songs/)
  
#         song_title = req.path.split("/songs/").last #turn /songs/Sorry into Sorry
#         song = @@songs.find{|s| s.title == song_title}
  
#         resp.write song.artist
#       end
  
#       resp.finish
#     end
#   end 