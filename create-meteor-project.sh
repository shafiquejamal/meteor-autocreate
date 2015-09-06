FULL_PATH="$1"
PATH_ONLY=${FULL_PATH%/*}
PROJECT_NAME="${FULL_PATH##*/}"
SCRIPT_PATH=$(pwd)
echo ${FULL_PATH}
echo ${PATH_ONLY}
echo ${PROJECT_NAME}
cd "${PATH_ONLY}"
meteor create ${PROJECT_NAME}
echo "source path: ${SCRIPT_PATH}/files-and-folders-to-copy/"
echo "destination: ${FULL_PATH}/"
rsync -avzt --ignore-existing --exclude='.*' "${SCRIPT_PATH}/files-and-folders-to-copy/" "${FULL_PATH}/"
rsync -avzt --ignore-existing "${SCRIPT_PATH}/.gitignore" "${FULL_PATH}/"
cd ${PROJECT_NAME}
rm *.html
rm *.js
rm *.css
meteor add iron:router
meteor add twbs:bootstrap
meteor add accounts-ui accounts-password
meteor add joshowens:accounts-entry
meteor add aldeed:autoform
meteor add aldeed:collection2
meteor add ongoworks:security
meteor remove insecure
meteor remove autopublish
git init
