setup:
	python3 -m venv ~/.dockerprojet
  
  
install:
	pip install --upgrade pip &&\
    pip install -r requirements.txt
       
      
test:
  #python -m pytest --v --cov=myrepolib tests/*python3
  
lint:
	hadolint Dockefile
	pylint --disable=R,C,W1203 app.py
   
all: install lint test
