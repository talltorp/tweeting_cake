class TweetingCake
  attr_reader :name_on_cake

  def initialize(name_on_cake)
    @name_on_cake = name_on_cake
  end

  def description
    "#tweeting_cake detected #{twitter_handle}. They must be celebrating something #awesome!"
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