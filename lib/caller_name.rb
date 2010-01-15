# get the caller method name
# reopen object

class Object

  def caller_file_and_method_name
    caller_info = parse_caller(caller(2).first)
    [caller_info[0],caller_info[2]]
  end

  def parse_caller(at)
    if /^(.+?):(\d+)(?::in `(.*)')?/ =~ at
      file = Regexp.last_match[1]
      line = Regexp.last_match[2].to_i
      method = Regexp.last_match[3]
      [file, line, method]
    end
  end

end
