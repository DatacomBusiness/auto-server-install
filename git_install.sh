ssh-keygen -t ed25519 -y



## Add a SSH-Key (type "user:passwd ^D"), output: JSON object, or JSON error
curl -X POST -u {{ GITHUB_USER_ID }}:{{ GITHUB_USER_PW }} https://api.github.com/user/keys --data "{\"title\": \"{{ GITHUB_KEY_TITLE }}\", \"key\": \"$(cat $HOME/.ssh/id_ed25519.pub)\"}"