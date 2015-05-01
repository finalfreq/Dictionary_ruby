class Definition
  @@definitions = []

  attr_reader(:definition, :id)

  def initialize(definition)
    @definition = definition
    @id = @@definitions.length().+(1)
  end
end
