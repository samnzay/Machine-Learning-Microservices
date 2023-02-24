FROM python:3.7.3-stretch


## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY . /app

## Step 3:
# Install packages from requirements.txt, install scipy dependencies
# hadolint ignore=DL3013
#RUN pip install --no-cache-dir  --upgrade pip &&\
    #pip install --no-cache-dir  -r requirements.txt --use-pep517
RUN pip install --no-cache-dir --upgrade pip==23.0.1 &&\
    pip install --no-cache-dir --trusted-host pypi.python.org -r requirements.txt --use-pep517


## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
# command to run on container start
CMD [ "python", "app.py" ]
