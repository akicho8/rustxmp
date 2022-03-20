# use itertools::Itertools;
# println!("{:?}", vec![Ok(5), Err(6), Ok(7)].into_iter().map_ok(|e| e * 2).collect::<Vec<_>>());

class Result
  attr_accessor :value

  def initialize(value)
    @value = value
  end

  def inspect
    "#{self.class.name}(#{value})"
  end

  def is_ok
    false
  end

  def is_err
    false
  end
end

class Ok < Result
  def unwrap
    @value
  end
end

class Err < Result
  def unwrap
    raise
  end
end

def Ok(value)
  Ok.new(value)
end

def Err(value)
  Err.new(value)
end

module Enumerable
  def map_ok
    map do |e|
      if e.kind_of?(Ok)
        e.class.new(yield e.value)
      else
        e
      end
    end
  end
end

[Ok(5), Err(6), Ok(7), Err(8)].map_ok { |e| e * 2 } # => [Ok(10), Err(6), Ok(14), Err(8)]
