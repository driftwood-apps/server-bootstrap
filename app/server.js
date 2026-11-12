import { createServer } from "node:http";

const port = Number(process.env.PORT ?? 3000);
createServer((req, res) => {
  if (req.url === "/health") {
    res.writeHead(200, { "content-type": "text/plain" });
    res.end("ok");
    return;
  }
  res.writeHead(404);
  res.end();
}).listen(port, () => console.log(`listening on ${port}`));
