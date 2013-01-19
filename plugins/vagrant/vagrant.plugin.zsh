if ! command -v vagrant >/dev/null; then
  if [[ -d /opt/vagrant/bin ]]; then
    export PATH=/opt/vagrant/bin:$PATH
  fi
fi
