class Definition
  @@definitions = []


  attr_reader(:definition, :id)

  def initialize(definition)
    @definition = definition
    @id = @@definitions.length().+(1)

  end

  def save
    @@definitions.push(self)

  end

  def self.all
    @@definitions

  end

  def self.clear
    @@definitions = []
  end
end
