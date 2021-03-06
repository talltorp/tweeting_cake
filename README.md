# A cake that can tweet

See examples at https://twitter.com/tweeting_cake

This is part of the "Internet of ordinary things" movement:  
We take ordinary things and ask kids what they would do if it was connected to a computer and/or the internet.

It is a creative that brings value to both parties
* __Kids__ learn to code while thinking witout bounderies
* __Brands__ get a glimpse of what is possible if they think (way) outside their normal product development processes 

## Prerequisits
This is what you need to make a tweeting cake
* [Makey Makey](http://makeymakey.com/)
* A cake that is not too dry

## Official support matrix

__Ruby >= 2.0__
* [Brownies](http://www.bbcgoodfood.com/recipes/1223/bestever-brownies)
* [Delicato french chocolate cake](http://www.delicato.se/48/74/Fransk-Chokladtarta.html)
* [Angry Bird Cupcakes](http://thecraftingchicks.com/2011/03/angry-birds-cupcakes.html)

## Installation
```gem install tweeting_cake```

__Makey Makey installation__  
1. The `earth` goes in the __cake__  
2. The `space bar` connects to the __cake slicer__  

## Configuration
1. Create an app and developer tokens at http://dev.twitter.com
2. Add these tokens to these environment variables
  * TWITTER_CONSUMER_KEY
  * TWITTER_CONSUMER_SECRET
  * TWITTER_ACCESS_TOKEN
  * TWITTER_ACCESS_SECRET

In development, you can add this configuration in a file called `.env`

More info at https://github.com/bkeepers/dotenv

## Usage
Once installed, open `irb` and enter the following lines
```
require 'tweeting_cake'

cake_supervisor = TweetingCake::CakeSupervisor.new
cake_supervisor.supervise_cake_cutting
 ```

