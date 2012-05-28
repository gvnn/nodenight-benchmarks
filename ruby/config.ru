def fib(n)
  return n if (0..1).include? n
  fib(n-1) + fib(n-2) if n > 1
end

app = proc do |env|
  [
    # http status code
    200,
    # headers
    {'Content-Type' => 'text/html'},
    # html body
    [fib(20).to_s()]
  ]
end

run(app)