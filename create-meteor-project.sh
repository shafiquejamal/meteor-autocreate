FULL_PATH="$1"
PATH_ONLY=${FULL_PATH%/*}
PROJECT_NAME="${FULL_PATH##*/}"
echo ${FULL_PATH}
echo ${PATH_ONLY}
echo ${PROJECT_NAME}
cd "${PATH_ONLY}"
meteor create ${PROJECT_NAME}
cd ${PROJECT_NAME}
rm *.html
rm *.js
rm *.css
mkdir client
mkdir server
mkdir lib
mkdir public
meteor add iron:router
meteor add twbs:bootstrap
meteor add accounts-ui accounts-password
meteor add joshowens:accounts-entry
meteor remove insecure
meteor remove autopublish
git init
