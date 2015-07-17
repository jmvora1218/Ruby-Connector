#! /usr/bin/ruby

require './ss2'
shieldsquare_userid = "" # Enter the UserID of the user
shieldsquare_calltype = 1
shieldsquare_pid = ""
shieldsquare_response=shieldsquare_ValidateRequest shieldsquare_userid, shieldsquare_calltype, shieldsquare_pid

puts "Content-type: text/html"
puts ''
puts '<html>'
puts '<head>'
puts '<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />'
puts '<meta http-equiv="Content-Language" content="en" />'
puts '<title>Sample Home Page</title>'
puts '</head>'
puts '<body>'
if shieldsquare_response["responsecode"] == -1
	puts "Curl Error - " + shieldsquare_response["reason"] + "<BR>"
	puts "Please reach out to ShieldSquare support team for assistance <BR>"
	puts "Allow the user request"
end
puts '<script type="text/javascript">'
puts 'var __uzdbm_a = "' + shieldsquare_response["pid"] +'"'
puts 'var __uzdbm_b = "' + shieldsquare_response["url"] +'"'
puts shieldsquare_response["dynamic_JS"]
puts '</script>'
puts '<script type="text/javascript" src="http://cdn.perfdrive.com/static/browser_detect_min.js"></script>'
puts '<h1>'
puts '<BR>YOUR CODE GOES HERE'
puts '</h1>'
puts '</body>'
puts '</html>'

