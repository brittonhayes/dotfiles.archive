function set_secret -d "Set an environment variable outside of history"

    set -l options $options (fish_opt -s k -l key --required-val)

    argparse $options -- $argv

    if set -q _flag_key
        read -l secret_value
        set -gx (echo $_flag_key) $secret_value
    else
        echo (set_color red)"!"(set_color normal) "Missing required flag --key" 
    end

end
