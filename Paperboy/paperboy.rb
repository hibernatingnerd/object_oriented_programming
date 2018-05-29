class Paperboy

  def initialize (name)
    @name = name
    @exp = 0
    @earnings = 0
    @quota = 50
  end

    def quota

      @quota = @quota + (@exp * 0.5)
    end

    def deliver(start_address, end_address)
end

    def report
      "I'm #{@name}, I've delivered #{}"
end

end
