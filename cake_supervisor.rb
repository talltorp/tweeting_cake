require_relative "./twitter_client"
require_relative "./tweeting_cake"
require_relative "./cake_slicer"
require 'io/console'

class CakeSupervisor
  attr_accessor :check_for_cake_cutting

  def initialize
    @check_for_cake_cutting = true
  end

  def supervise_cake_cutting
    twitter_handle = ask_for_twitter_handle
    tweeting_cake = TweetingCake.new(twitter_handle)
    cake_slicer = CakeSlicer.new(TwitterClient.new)

    wait_for_cake_to_get_sliced

    cake_slicer.serve_a_slice_from(tweeting_cake)

    #exit
  end

  private

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