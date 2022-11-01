current_branch=$1
dev="dev"
demo="demo"
prod="prod"
BUILD_WEB="flutter build web --dart-define=ENVIRONMENT=$current_branch"
FIREBASE_DEPLOY="firebase deploy --only hosting:"
dev_host=web-dev-8f365
demo_host=web-demo-8f365
prod_host=web-8f365
firebase_continuos_deploy="false"

$BUILD_WEB

if [[ ${firebase_continuos_deploy} = "true" ]]
then

    if [[ ${current_branch} = $dev ]]
    then
        $BUILD_WEB
        $FIREBASE_DEPLOY$dev_host
    elif [[ ${current_branch} = $demo ]]
    then
        $BUILD_WEB
        $FIREBASE_DEPLOY$demo_host
    elif [[ ${current_branch} = $prod ]]
    then
        $BUILD_WEB
        $FIREBASE_DEPLOY$prod_host
    fi

fi