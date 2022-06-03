const http = require("http");

// Create a local server to receive data from
const server = http.createServer((req, res) => {
  console.log(req);

  res.writeHead(200, { "Content-Type": "application/json" });
  res.end(
    JSON.stringify({
      data: "Hello World!",
    })
  );
  if(req.method=='POST'&&req.url ==='/workspaces'){
    req.writeHead(200,{'Content-Type':'application/json'});
    req.end('OK');
    return;
  }
});

server.listen(5000);
