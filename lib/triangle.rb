class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :s_one_two_length, :s_two_three_length, :s_one_three_length

  def initialize(side_one, side_two, side_three)
  	@side_one = side_one
  	@side_two = side_two
  	@side_three = side_three
  	@s_one_two_length = self.side_one + self.side_two
  	@s_two_three_length = self.side_two + self.side_three
  	@s_one_three_length = self.side_one + self.side_three
  end

  def check_valid
  	(self.side_one > 0 && self.side_two > 0 && self.side_three > 0) && (self.s_one_three_length > self.side_two && self.s_one_two_length > self.side_three && self.s_two_three_length > self.side_one)
  end 

  def kind

  	if check_valid == false
  		raise TriangleError
  	elsif (self.side_one == self.side_two) && (self.side_two == self.side_three) && (self.side_one == self.side_three)
  		:equilateral
  	elsif (self.side_one == self.side_two) || (self.side_two == self.side_three) || (self.side_one == self.side_three)
  		:isosceles
  	else
  		:scalene
  	end 
  	
  end

  class TriangleError < StandardError
  end

end
