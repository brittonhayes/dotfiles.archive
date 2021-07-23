function laws -d "Run awscli with localstack and test env"
    set -l AWS_ACCESS_KEY_ID test
    set -l AWS_SECRET_ACCESS_KEY test
    awslocal $argv
end
