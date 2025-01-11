class LogLineParser

  attr_reader :line
  attr_reader :message

  def initialize(line)
    @message = line.split(':')[1].strip
    @line = line.tr('[', '').downcase.split(']')[0]
  end

  def message
    @message
  end

  def log_level
    @line
  end

  def reformat
    '%<message>s (%<log_level>s)' % {message: message, log_level: log_level}
  end

end
