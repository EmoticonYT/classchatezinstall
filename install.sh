echo "Setting up ClassChat..."

cd ~

mkdir classchat

cd classchat

curl -LO https://github.com/EmoticonYT/classchatezinstall/raw/refs/heads/main/classchat.zip

unzip classchat.zip

echo "Installing Node and NPM... (Please enter your password)"

sudo apt install nodejs npm

rm -rf node_modules

npm install

echo "Done! Would you like to start the web server?"
select opt in "Run in foreground" "Run in background" "Exit"; do
  case $opt in
    "Run in foreground")
      node server.js
      break
      ;;
    "Run in background")
      node server.js &
      break
      ;;
    "Exit")
      echo "To start ClassChat, run 'node server.js'."
      break
      ;;
    *)
      echo "Invalid option $REPLY"
      ;;
  esac
done
