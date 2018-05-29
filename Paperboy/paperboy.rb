class Paperboy

  def initialize (name)
    # starting variables needed
    @name = name
    @exp = 0
    @earnings = 0
    @total_earnings = 0
    @minquota = 50
    @count = 0
    @payout = 0
    @total_papers = 0
    @number_papers
  end
    #set the quota each time run
    def quota
      @minquota + (@exp * 0.5)
    end

    def deliver(start_address,end_address)
      @earnings = 0
      #.abs returns an absolute sum so it doesn't matter which way you +/-
      @number_papers = (end_address - start_address).abs + 1
      # take returned value of papers and compare against quota
      if (@number_papers >= quota)
        @earnings = quota * 0.25
        @earnings = (@number_papers - quota) * 0.5
      else
        @earnings = @number_papers * 0.25
        @earnings = - 2
      end
      #update experience and total earnings
      @exp = @exp + @number_papers
      @total_earnings = @total_earnings + @earnings
      return @earnings
    end

    def earnings
      return @total_earnings
    end

    def report
          "#{@name} has delivered #{@exp} papers and earned $#{@total_earnings.round(2)} so far!"
end

end

willy = Paperboy.new("willy")
puts willy.quota
puts willy.deliver(rand(20..100), rand(101..300))
puts willy.earnings
puts willy.report


puts willy.quota
puts willy.deliver(rand(20..100), rand(101..300))
puts willy.earnings
puts willy.report

puts willy.quota
puts willy.deliver(rand(20..100), rand(101..300))
puts willy.earnings
puts willy.report
