function fish_greeting
    echo Ciallo!
end

function gotop
  /usr/bin/gotop --nvidia 
end

function v
  nvim $argv
end

function ssh
  export TERM=xterm
  /usr/bin/ssh $argv
end

function y
  set -l tmp (mktemp -t "yazi-cwd.XXXXXX")
  yazi $argv --cwd-file="$tmp"
    
  if set -l cwd (command cat -- "$tmp")
    if test -n "$cwd"; and test "$cwd" != "$PWD"
      builtin cd -- "$cwd"
    end
  end
    
  rm -f -- "$tmp"
end

function docker-run-easyconnect
  if not systemctl is-active --quiet docker
    echo "Docker not running..."
    sudo systemctl start docker
        
    while not systemctl is-active --quiet docker
      echo "Waiting for docker to start..."
      sleep 1
    end

  end

  vncviewer & disown

  docker run --rm \
    --device /dev/net/tun \
    --cap-add NET_ADMIN \
    -ti \
    -e PASSWORD=1234 \
    -e URLWIN=1 \
    -v $HOME/.ecdata:/root \
    -p 127.0.0.1:5901:5901 \
    -p 127.0.0.1:1080:1080 \
    -p 127.0.0.1:8888:8888 \
    hagb/docker-easyconnect:7.6.7 $argv
end

