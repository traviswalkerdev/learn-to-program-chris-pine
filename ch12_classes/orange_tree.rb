class OrangeTree

  def initialize
    @height = 3
    @age = 0
    @orange_count = 0
  end

  def one_year_passes
    @orange_count = 0            # All the oranges fall off the tree.

    if @age > 3
      @orange_count = 6 + (@age * 2)
    end

    if @age == 18
      puts "The orange tree has died from age."
      exit
    end

    @age += 1
    @height += 0.5

    puts "The tree is #{@age} years old and #{@height} feet tall."
  end

  def count_the_oranges
    puts "There are #{@orange_count} oranges on the tree."
  end

  def pick_an_orange
    if @orange_count < 1
      puts "There are no oranges left to pick."
    else
      @orange_count -= 1
      puts "That orange was delicious."
      puts "There are #{@orange_count} oranges left on the tree."
    end
  end

end


tree = OrangeTree.new
tree.one_year_passes
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.one_year_passes
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.count_the_oranges
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.pick_an_orange
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
tree.one_year_passes
