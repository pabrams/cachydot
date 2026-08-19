function chrome --wraps='google-chrome-stable --profile-directory="Paul"' --wraps='google-chrome-stable --profile-directory="Default"' --description 'alias chrome google-chrome-stable --profile-directory="Default"'
    google-chrome-stable --profile-directory="Default" $argv
end
