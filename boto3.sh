git clone https://github.com/boto/boto3.git
pip install -r boto3/requirements-docs.txt
pip install --upgrade boto3
pip install doc2dash
cd docs
make html
doc2dash -A build/html --name boto3