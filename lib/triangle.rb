class Triangle
  # write code here
  attr_accessor :s_1, :s_2, :s_3, :s_1_2_length, :s_2_3_length, :s_1_3_length

  def initialize(s_1, s_2, s_3)
  	@s_1 = s_1
  	@s_2 = s_2
  	@s_3 = s_3
  	@s_1_2_length = self.s_1 + self.s_2
  	@s_2_3_length = self.s_2 + self.s_3
  	@s_1_3_length = self.s_1 + self.s_3
  end

  def check_valid
  	(self.s_1 > 0 && self.s_2 > 0 && self.s_3 > 0) && (self.s_1_3_length > self.s_2 && self.s_1_2_length > self.s_3 && self.s_2_3_length > self.s_1)
  end 

  def kind

  	if check_valid == false
  		raise TriangleError
  	elsif (self.s_1 == self.s_2) && (self.s_2 == self.s_3) && (self.s_1 == self.s_3)
  		:equilateral
  	elsif (self.s_1 == self.s_2) || (self.s_2 == self.s_3) || (self.s_1 == self.s_3)
  		:isosceles
  	else
  		:scalene
  	end 

  end

  class TriangleError < StandardError
  end

end
