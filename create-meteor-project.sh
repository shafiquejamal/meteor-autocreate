FULL_PATH="$1"
PROJECT_TITLE="$2"
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
find . -type f -name "*.html" | xargs perl -p -i -e "s#PROJECT_NAME#${PROJECT_TITLE}#g"
meteor add iron:router
meteor add twbs:bootstrap
meteor add accounts-ui accounts-password
meteor add aldeed:autoform
meteor add aldeed:collection2
meteor add ongoworks:security
meteor add email 
meteor add momentjs:moment
meteor add yogiben:admin
meteor add fortawesome:fontawesome
meteor add accounts-base
meteor add dburles:collection-helper
meteor add tsega:bootstrap3-datetimepicker@=3.1.3_3
meteor add mrt:moment-timezone
meteor add aldeed:autoform-bs-datetimepicker
meteor add raix:handlebar-helpers
meteor remove insecure
meteor remove autopublish
git init
mkdir packages
# https://forums.meteor.com/t/how-to-install-meteor-package-direct-from-github/1693
# https://github.com/Differential/accounts-entry/issues/383
cd packages
git clone https://github.com/jakubbilko/accounts-entry
meteor add joshowens:accounts-entry-1.2
cd ..

