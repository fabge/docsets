mkdir -p tmp
(cd tmp && git clone https://github.com/boto/boto3.git)
(cd tmp/boto3/docs && make html)
doc2dash tmp/boto3/docs/build/html/ --name boto3 --destination boto3/
git config --global user.email "docsets-bot@example.com"
git config --global user.name "docsets-bot"
git pull
git add boto3/boto3.docset && git commit -m "Updated docsets"
git push