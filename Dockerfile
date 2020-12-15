FROM node:12

WORKDIR /manage-learn-services/sl-assessment-service

#copy package.json file
COPY package.json /manage-learn-services/sl-assessment-service

#install node packges
RUN npm install

#copy all files 
COPY . /manage-learn-services/sl-assessment-service

#expose the application port
EXPOSE 4201

#start the application
CMD node app.js
