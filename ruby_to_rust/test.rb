# [].reduce(&:*)                  # => nil
# [].reduce(1, &:*)                  # => 1

# [5, 6, 7, 8].find(&:even?) * 10 # => 60

[6].find(&:even?)&.* 10 # => 60
