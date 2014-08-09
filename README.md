Ruby wrapper for the [Sleep Cloud API](https://sites.google.com/site/sleepasandroid/doc/sleepcloud-api) (Sleep as Android).

Install with

    gem install sleep-cloud

Once you've set up your app and have a token for your user:

    client = SleepCloud::Client.new "your_token"

Then you can do:

```ruby
> client.sleeps :timestamp => 1407541567, :sample => true
=> {
    "sleeps" => [{
        "cycles"         => 2, 
        "timezone"       => "GMT+02:00", 
        "snoringSeconds" => 252, 
        "noiseLevel"     => 0.19548219442367554, 
        "rating"         => 0, 
        "lengthMinutes"  => 348, 
        "fromTime"       => 1398482266245, 
        "deepSleep"      => 0.15294118225574493, 
        "toTime"         => 1398504334103,
        "labels"         => [
            {"timestamp"=>1398482266245, "label"=>"LIGHT_START"}, 
            {"timestamp"=>1398482278311, "label"=>"TRACKING_PAUSED"}, 
            {"timestamp"=>1398482517016, "label"=>"BROKEN_START"}, 
            {"timestamp"=>1398482517016, "label"=>"LIGHT_END"}, 
            {"timestamp"=>1398483269329, "label"=>"BROKEN_END"}, 
            {"timestamp"=>1398494804795, "label"=>"DEEP_END"}, 
            {"timestamp"=>1398499386775, "label"=>"SNORING"}, 
            {"timestamp"=>1398504300000, "label"=>"ALARM_EARLIEST"}, 
            {"timestamp"=>1398504318475, "label"=>"ALARM_STARTED"}, 
            {"timestamp"=>1398504334103, "label"=>"LIGHT_END"}, 
            {"timestamp"=>1398506100000, "label"=>"ALARM_LATEST"}
        ] 
    }]
}
```

See [https://sites.google.com/site/sleepasandroid/doc/sleepcloud-api] for the full documentation.

The Sleep Cloud API uses Google OAuth2 for client authentication, and only allows white listed Client-Ids. So talk to them! They are nice folks.
