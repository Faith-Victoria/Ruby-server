require 'socket'

server = TCPServer.new 8080 

puts 'Listening on port 8080'
while session = server.accept 
  request = session.gets 
  puts request 

  
  session.print "HTTP/1.1 200 OK\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n" 
  session.print "<h1>Hello from Kenya!</h1>"
  session.print "<p>The current time is: #{Time.now}</p>"

  session.close 
end