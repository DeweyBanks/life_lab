require 'colorize' # need the gem!

module SimpleAssert
  def assert_that(name, object_one, object_two)
    pass_message = "Assertion '#{name}' passed.".green
    fail_message = "Assertion '#{name}' failed: '#{object_one}' != '#{object_two}'.".red

    if object_one == object_two
      puts pass_message
      true
    else
      puts fail_message
      false
    end
  end
end
