class Array
  def swap_remove(i)
    self[i].tap do
      self[i] = pop
    end
  end
end

v = [5, 6, 7, 8]
v.swap_remove(1)  # =>
v                 # =>
