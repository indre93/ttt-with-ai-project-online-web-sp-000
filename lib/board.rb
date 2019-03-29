class Board
  attr_accessor :cells

<<<<<<< HEAD
  def initialize
    @cells = Array.new(9, " ")
  end

  def reset!
    cells.replace(Array.new(9, " "))
  end

  def display
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts "-----------"
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts "-----------"
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
  end

  def position(user_input)
    input = user_input.to_i
    cells[input -1]
  end

  def full?
    cells.all? {|cell| cell != " "}
  end

  def turn_count
    cells.count {|cell| cell != " "}
  end

  def taken?(user_input)
    position(user_input) != " "
  end

  def valid_move?(position)
    !taken?(position) && position.to_i.between?(1, 9)
  end

  def update(user_input, player)
    input = user_input.to_i
    cells[input -1] = player.token
  end

=======
  @cells = []

  def reset!
    self.cells = Array.new(9, " ")
  end

  def initialize
    self.cells = Array.new(9, " ")
  end

  def display
    puts " #{self.cells[0]} | #{self.cells[1]} | #{self.cells[2]} "
    puts "-----------"
    puts " #{self.cells[3]} | #{self.cells[4]} | #{self.cells[5]} "
    puts "-----------"
    puts " #{self.cells[6]} | #{self.cells[7]} | #{self.cells[8]} "
  end

  def position(user_input)
    self.cells[user_input.to_i-1]
  end

  def full?
    self.cells.all? {|cell| cell == "X" || cell == "O"}
  end

  def turn_count
    self.cells.count("X") + self.cells.count("O")
  end

  def taken?(position) #check board position
    self.cells[position.to_i-1] == "X" || #board position -1 because of test using range 1-9 (user input numbers)
    self.cells[position.to_i-1] == "O"
  end

  def valid_move?(position)
    !taken?(position) && position.to_i >0 && position.to_i <=9
  end

  def update(position, player)
      self.cells[position.to_i-1] = player.token
  end


>>>>>>> f18be614d7d422eae873a588a0fd7b5d670e8030
end
