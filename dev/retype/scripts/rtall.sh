rm /var/www/docs/builds.log;
echo "BUILDING DOCS" > /var/www/docs/builds.log;

REPOS=("ai.docs.cronje.me" "android.docs.cronje.me" "arm.docs.cronje.me" "backup.docs.cronje.me" "bash.docs.cronje.me" "crypto.docs.cronje.me" "dev.docs.cronje.me" "dns.docs.cronje.me" "docs.cronje.me" "gist.docs.cronje.me" "hacking.docs.cronje.me" "heepp.docs.cronje.me" "js.docs.cronje.me" "kali.docs.cronje.me" "mongo.docs.cronje.me" "notes.docs.cronje.me" "onion.docs.cronje.me" "opensource.docs.cronje.me" "perl.docs.cronje.me" "php.docs.cronje.me" "projects.docs.cronje.me" "reports.docs.cronje.me" "repos.docs.cronje.me" "saas.docs.cronje.me" "server.docs.cronje.me" "setup.docs.cronje.me" "tips.docs.cronje.me" "tools.docs.cronje.me" "trading.docs.cronje.me" "troubleshoot.docs.cronje.me" "unity.docs.cronje.me" "win.docs.cronje.me")

for REPO in ${REPOS[@]}; do
  echo "$REPO START" >> /var/www/docs/builds.log;
  cd /var/www/docs/$REPO
  echo "$REPO BUILD" >> /var/www/docs/builds.log;
  sh build.sh >> /var/www/docs/builds.log;
  echo "$REPO git add changes";
  git add . >> /var/www/docs/builds.log;
  echo "$REPO git commit" >> /var/www/docs/builds.log;
  git commit -m "Update docs" >> /var/www/docs/builds.log;
  echo "$REPO git push"  >> /var/www/docs/builds.log;
  git push >> /var/www/docs/builds.log;
  echo "$REPO END" >> /var/www/docs/builds.log;
done
