class LogLineParser
  def initialize(line)
    @line = line
  end

  def message
    message = @line.split(":")
    message[1].strip
  end

  def log_level

    log_level_end = @line.index(']')
    #debug "The value is #{log_level_end}."

    log_level_start = @line.index('[')
    #debug "The value is #{log_level_start}."
    log_level = @line.slice(log_level_start+1,log_level_end-1).downcase

  end

  def reformat
    #debug "The value is #{message}."
    #debug "The value is #{log_level}."
    message + ' ' + '(' + log_level + ')'
  end
end
