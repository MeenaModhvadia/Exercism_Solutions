class LogLineParser

  attr_reader :line
  attr_reader :message

  def initialize(line)
    message = ''
    @line = line
  end

  def message
    message_parts = @line.split(':')
    "%s" % [@line.split(':')[1].strip]
  end

  def log_level
    log_level = "%s" % [@line.split(':')[0].strip]
    log_level.tr('[]', '').downcase
  end

  def reformat
    #debug "The value is #{message}."
    #debug "The value is #{log_level}."
    message << " (#{log_level})"
  end

end
