class LogLineParser

  attr_reader :line
  attr_reader :message

  def initialize(line)
    @line = line.split(":")
  end

  def message
    "%s" % [@line[1].strip].first.tr("[]", "")
  end

  def log_level
    log_level = "%s" % [@line[0].strip]
    log_level.tr('[]', '').downcase
  end

  def reformat
    "%s (%s)" % [message, (log_level)]
  end

end
