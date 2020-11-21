## Docker local deploy

<code>docker build --tag=builder:latest .</code>
<br>
<code>docker run -v "$(pwd)"/:/src/ builder:latest bash -c "/src/scripts/build-web.sh"</code>