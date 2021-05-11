git clone https://github.com/boto/boto3.git
pip install -r boto3/requirements-docs.txt
pip install --upgrade boto3
pip install doc2dash
cd boto3/docs
make html
doc2dash build/html --name boto3 --destination ./boto3-docs
ls
ls boto3-docs