FROM busybox
WORKDIR /app
COPY templates/ templates/
COPY micrach ./
RUN chmod +x /app/micrach
RUN pwd
RUN ls
CMD ["/app/micrach"]