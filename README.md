# StormBroker

## Info

This is essentially a webpage (contained in the enclosed StormBroker directory).
The page is currently featureless other than a div with id='stormbroker' which acts as the parent to the canvas containing the game itself. 
The game screen will automatically resize to fit inside that div, preserving its aspect ratio.

You probably want to integrate and style the page to fit your site. 
All you need to do is be mindful of the above sizing behavior and the hierarchy of src and bundle.min.js.

You can try out the game in action at https://stormbroker.dclimate.net/. 
It performs best on desktop browsers though in our testing it does also work on mobile.

## Run on localhost

    npm install --global http-server
    http-server StormBroker

## Deployment
NOTE: Currently for dClimate use only


    bash deploy.sh
