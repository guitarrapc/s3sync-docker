FROM microsoft/dotnet:2.1.3-runtime
WORKDIR /app
ENV S3Sync_LocalRoot=/app/sync
RUN curl -sLJO https://github.com/guitarrapc/S3Sync/releases/download/1.3.0/s3sync_netcore.tar.gz \
    && tar xvfz s3sync_netcore.tar.gz \
    && rm ./s3sync_netcore.tar.gz
CMD ["dotnet", "S3Sync.dll"]
