setup:
	python3 -m venv ~/.uda-docker-proj
	
install:
	pip install --upgrade pip &&\
    pip install -r requirements.txt