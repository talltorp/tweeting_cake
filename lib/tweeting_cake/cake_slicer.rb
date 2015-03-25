module TweetingCake
  class CakeSlicer
    attr_reader :twitter_client

    def initialize(twitter_client)
      @twitter_client = twitter_client
    end

    def serve_a_slice_from(cake)
      twitter_client.tweet(cake.tweetable_description)
    end
  end
end