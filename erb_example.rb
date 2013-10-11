require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

y = 'hello!'
template = ERB.new "I want to say: <%=y %>"
puts template.result(binding)

z = ['dogs', 'cats', 'rabbits']

template = ERB.new "<% z.each do |pet| puts pet end %>"
puts template.result(binding)