/* Strict syntax */

private function setTimeout(fn:Function, time:Number = 0):void {
    var t:Timer = new Timer(time,1),
        finish  = function(){
            fn();
            t.removeEventListener(TimerEvent.TIMER_COMPLETE, finish);
        };

    t.addEventListener(TimerEvent.TIMER_COMPLETE, finish);
    t.start();
}

/* Relaxed syntax */

function setTimeout(fn, time = 0) {
    var t      = new Timer(time, 1),
        finish = function(){
            fn();
            t.removeEventListener(TimerEvent.TIMER_COMPLETE, finish);
        }
    t.addEventListener(TimerEvent.TIMER_COMPLETE, finish);
    t.start();
}