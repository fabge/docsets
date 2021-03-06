mkdir -p tmp
(cd tmp && git clone https://github.com/psf/requests.git)
(cd tmp/requests/docs && make html)
doc2dash tmp/requests/docs/_build/html/ --name requests --destination requests/
git config --global user.email "docsets-bot@example.com"
git config --global user.name "docsets-bot"
git pull
git add requests/requests.docset && git commit -m "Updated docsets"
git push