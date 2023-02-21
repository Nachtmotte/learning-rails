class BasePolicy
  attr_reader :record

  def initialize(record)
    @record = record
  end

  def method_missing(m, *args, &block)
    false
  end

  def respond_to_missing?
    true
  end
end
