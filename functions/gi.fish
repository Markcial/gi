function _gi_list_languages
  curl -sfL https://www.gitignore.io/api/list | tr "," "\n"
end

function gi
  set -l param (string join ',' $argv)
  curl -fLw '\n' https://www.gitignore.io/api/${param}
end
