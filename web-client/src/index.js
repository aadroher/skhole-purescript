import { main } from "../output/Main";

new EventSource("/esbuild").addEventListener("change", () => location.reload());

main();
