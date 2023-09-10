[![CircleCI](https://dl.circleci.com/status-badge/img/gh/jainsmailbox/Udacity-project4/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/jainsmailbox/Udacity-project4/tree/main)

## Project Overview (Anurag's Udacity project)

In this project, I have apploied the skills I have acquired in the Operationalize a Machine Learning Microservice API section course as part of Udacity Cloud Devops Nanodegree. 

I was provided with the a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. Read more about the data, which was initially taken from Kaggle, on the data source site. This project tests the ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Project Tasks

Objective of doing this project is to operationalize this working, machine learning microservice using kubernetes, which is an open-source system for automating the management of containerized applications. 
Below tasks were completed as part of this project:

* Test your project code using linting
* Complete a Dockerfile to containerize this application
* Deploy your containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested

You can find a detailed [project rubric, here](https://review.udacity.com/#!/rubrics/2576/view).

## Setup the Environment

**Note**: As my local windows system resources were not enough to run Docker & Kubernetes, I have used AWS Cloud9 development IDE to complete this project. 

* Create a virtualenv and activate it using below commands:

python3 -m venv ~/.devops1
source ~/.devops1/bin/activate

* Run make install to install the necessary dependencies including hadolint 
* Run make lint (pylint app.py files and hadolint Dockerfile) to detect errors in the code.
* Docker was pre-installed on my EC2 instance as part of AWS Cloud9 environment setup 
* Installed minikube on Cloud9 

### Running `app.py`

1. Standalone:  `python app.py`
   
2. Run in Docker:  `./run_docker.sh`
   * While the server is listening on Port= 8000, open another terminal and in the same folder run file ./make_prediction.sh
   * A prediction can be seen in terminal in case of succesfull execuation.
   * In the listening terminal, you can see a status 200 -.
3. Run in Kubernetes:  `./run_kubernetes.sh`
   * In terminal you can see an IP address and port number. Copy that address and edit make_prediction_2.sh file with the correct port and address in line 3 and 28.
   * open another terminal and in the same folder run file ./make_prediction_2.sh
   * In the listening terminal, you can see a successfull prediction
4. There is a folder named '.circleci' that includes a config.yml file. In case if you have plan to push the repo to github. Just add the repo in circleci account and look at the final tests if they pass or fail.
5. You can see a badge in the top in README file that show PASSED in green color to confirm the successfull execution. 

### Kubernetes Steps

1. Setup and Configure Docker locally
  * install docker [For me it was pre-installed in Cloud9 environment] 
  * Run ./run_docker.sh
2. Setup and Configure Kubernetes locally
  * Run curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
  * Run sudo install minikube-linux-amd64 /usr/local/bin/minikube
  * Run minikube start to start minikube
  * Run kubectl get pods to see which pods are running.
  * Run ./run_kubernetes.sh
3. Create Flask app in Container
  * Run ./run_docker.sh to build and start the Flask app container.
  * Run ./upload_docker.sh to upload the container to docker hub.

**License**
This Project is developed as part of Udacity DevOps Engineer Nano Degree Program.

**Author**
Anurag Jain
