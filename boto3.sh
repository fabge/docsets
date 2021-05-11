cd boto3/docs
make html
doc2dash build/html --name boto3 --destination ./boto3-docs
ls
ls boto3-docs