FROM node:17.6.0

# Create app directory
WORKDIR /usr/src/app

# Expose port for service
EXPOSE 5000
ENV PORT=5000

# Install and configure `serve`.
RUN npm install -g serve

# Copy source code to image
COPY ./build /usr/src/app/build

CMD serve -s build
