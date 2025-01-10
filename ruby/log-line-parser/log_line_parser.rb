class LogLineParser

  attr_reader :line
  attr_reader :message

  def initialize(line)
    @line = line.split(':')
  end

  def message
    '%<message>s' % {message: line[1].strip}
  end

  def log_level
    log_level = "%s" % [line[0].strip]
    '%<log_level>s' % {log_level: log_level.tr('[]', '').downcase}
  end

  def reformat
    '%<message>s (%<log_level>s)' % {message: message, log_level: log_level}
  end

end