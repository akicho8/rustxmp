# おすすめしない書き方です
v = ["a", "b", "c"]
v.select! do |e|
  if e == "b" || e == "c"
    if e == "b"
      e.upcase!
    end
    true
  end
end
v  # =>
