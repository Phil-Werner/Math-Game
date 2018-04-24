class Question
  attr_reader :first_num, :second_num, :answer

  def initialize
    @first_num = 1 + rand(20)
    @second_num = 1 + rand(20)
    @answer = @first_num + @second_num
  end
end