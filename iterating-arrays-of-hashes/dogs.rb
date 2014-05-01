class Dogs
  POOR      = (0..5).to_a.sample
  AVERAGE   = (6..10).to_a.sample
  EXCELLENT = (11..15).to_a.sample

  def initialize
    joe   = {
      :name => {:first => "Joe", :last=> "Smith"},
      :owner_quality => EXCELLENT
    }
    sarah = {
      :name => {:first => "Sarah", :last => "Smith"},
      :owner_quality => AVERAGE
    }
    andrew = {
      :name => {:first => "Andrew", :last => "Beter"},
      :owner_quality => AVERAGE
    }

    @dogs = [{:name => "Fido", :size => :large, :owner => joe},
             {:name => "Yapper", :size => :small, :owner => joe},
             {:name => "Bruiser", :size => :large, :owner => joe},
             {:name => "Tank", :size => :huge, :owner => sarah},
             {:name => "Beast", :size => :large, :owner => sarah},
             {:name => "Harleigh", :size => :medium, :owner => andrew},
             {:name => "Trixie", :size => :small, :owner => andrew},]
  end

  # only edit below this line

  def small_dogs
    @dogs.select { |dog| dog[:size] == :small}
  end

  def huge_dog
    @dogs.select { |dog| dog[:size] == :huge}.first
  end

  def large_dog_names
    @dogs.select{ |dog| dog[:size] == :large }.map { |dog| dog[:name]}
  end

  def joes_large_dogs
    @dogs.select { |dog| dog[:owner][:name][:first] == "Joe" }.select{ |dog| dog[:size] == :large }.map { |dog| dog[:name]}
  end

  def sizes
    @dogs.map { |dog| dog[:size]}.uniq
  end

  def owners
    @dogs.map { |dog| "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}" }.uniq
  end

  def average_owners
    @dogs.select { |dog| dog[:owner][:owner_quality] == AVERAGE }.map { |dog| "#{dog[:owner][:name][:first]} #{dog[:owner][:name][:last]}"}.uniq
  end
end
