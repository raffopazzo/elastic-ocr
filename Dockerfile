FROM ubuntu:16.04

RUN apt-get update 
# OCR related stuff
RUN apt-get install --yes imagemagick tesseract-ocr tesseract-ocr-ita
# REST API related stuff
RUN apt-get install --yes jq curl
ADD elastic-ocr /usr/local/bin
ENTRYPOINT elastic-ocr
