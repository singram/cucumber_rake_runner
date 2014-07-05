class IoCapture

  def self.stdout
    temp_stdout_buffer = StringIO.new
    begin
      old_stdout = $stdout
      $stdout = temp_stdout_buffer
      yield
    ensure
      $stdout = old_stdout
    end
    temp_stdout_buffer.string
  end

  def self.stderr
    temp_stderr_buffer = StringIO.new
    begin
      old_stderr = $stderr
      $stderr = temp_stderr_buffer
      yield
    ensure
      $stderr = old_stderr
    end
    temp_stderr_buffer.string
  end

end
