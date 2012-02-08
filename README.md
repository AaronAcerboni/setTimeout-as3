# Usage  

    setTimeout(function(){
    	trace('Hello world');
    }, 2000);

or just ...

    setTimeout(function(){
        trace('Without second parameter.')
    })

# About

I wanted a function similar to setTimeout for my ActionScript 3 environment. I made this wrapper over the AS3 Timer and TimerEvent objects. You will need to import them if you wish to use this function.

   import flash.util.Timer;
   import flash.events.TimerEvent;
