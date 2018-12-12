echo 'publishing'
   curl https://raw.githubusercontent.com/adilforms/Shared-tempalte/test/Dockerfile > Dockerfile
   version=$(git rev-parse --short HEAD)
   PNAME=$(echo $JOB_NAME | tr / . | tr "[:upper:]" "[:lower:]")
   PACKAGENAME=${PNAME%.*}
   docker build -t adilforms/$PACKAGENAME.$version:$BRANCH_NAME .
   docker push adilforms/$PACKAGENAME.$version:$BRANCH_NAME
