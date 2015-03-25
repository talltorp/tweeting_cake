class TweetingCake
  attr_reader :name_on_cake

  def initialize(args = {})
    @name_on_cake = args[:name_on_cake]
  end

  def tweetable_description
    "#tweeting_cake is served! #{twitter_handle} must be celebrating something #awesome!"
  end

  private

  def twitter_handle
    if name_on_cake.start_with?("@")
      name_on_cake
    else
      "@#{name_on_cake}"
    end
  end
end