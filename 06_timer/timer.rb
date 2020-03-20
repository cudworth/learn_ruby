class Timer
  def initialize
    @seconds = 0
  end

  def seconds
    @seconds
  end

  def seconds=(val)
    @seconds = val
  end

  def time_string
    h_m_s
  end

  private

  def h_m_s
    s = @seconds
    h = (s / (60 * 60)).to_s.rjust(2, '0')
    s = s % (60 * 60)
    m = (s / 60).to_s.rjust(2, '0')
    s = (s % 60).to_s.rjust(2, '0')
    p [h, m, s].join(':')
  end

end
