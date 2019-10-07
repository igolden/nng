class NashvilleNameGenerator
  def initialize
    nouns_seed = "nouns.txt"
    adjectives_seed = "adjectives.txt"
    @nouns = File.read(nouns_seed).split("\n")
    @adjectives = File.read(adjectives_seed).split("\n")
  end

  def generate(nouns=@nouns, adjectives=@adjectives, low=10000, high=99999, join_char="_")
    noun = nouns.sample
    adjective = adjectives.sample
    number = rand(low..high)

    [adjective, noun, number].join(join_char)
  end
end

60.times do 
  nng = NashvilleNameGenerator.new

  pp nng.generate
end
