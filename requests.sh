doc2dash requests/docs/_build/html/ --name requests --destination .
git config --global user.email "docsets-bot@example.com"
git config --global user.name "docsets-bot"
git add requests.docset && git commit -m "Updated docsets"
git push