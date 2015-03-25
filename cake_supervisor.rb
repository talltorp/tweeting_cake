require_relative "./twitter_client"
require_relative "./tweeting_cake"
require_relative "./cake_slicer"
require 'io/console'

class CakeSupervisor
  def supervise_cake_cutting
    twitter_handle = ask_for_twitter_handle
    tweeting_cake = TweetingCake.new(
      name_on_cake: twitter_handle
      )
    cake_slicer = CakeSlicer.new(TwitterClient.new)

    give_cake_slicing_instructions
    wait_for_cake_to_get_sliced

    cake_slicer.serve_a_slice_from(tweeting_cake)
  end

  private

  def give_cake_slicing_instructions
    puts "Now cut the cake with the cake slicer!"
    STDOUT.flush
  end

  def ask_for_twitter_handle
    puts "what is your twitter handle?"
    STDOUT.flush
    gets.chomp
  end

  def wait_for_cake_to_get_sliced
    loop do
      system("stty raw -echo")
      char = STDIN.read_nonblock(1) rescue nil
      system("stty -raw echo")
      break if / /i =~ char
      exit if /x/i =~ char
    end
  end
end