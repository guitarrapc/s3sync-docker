# Supported Linux amd64 tags

depends on [dotnet-docker](https://github.com/dotnet/dotnet-docker) image and [aws-sdk-net for .net core](https://github.com/aws/aws-sdk-net)

currently base image is `microsoft/dotnet:2.0-runtime`.

## Usage

You can run with docker.

Run with IAM Role is recommended.

```bash
docker run --rm -v <YOUR_SYNC_DIR>:/app/sync/ -e S3Sync_BucketName=<YOUR_BUCKET_NAME> guitarrapc/s3sync
```

Local run without IAM Role, use AWS Credentials.

```bash
$ docker run --rm -v <YOUR_SYNC_DIR>:/app/sync/ -e S3Sync_BucketName=<YOUR_BUCKET_NAME> -e AWS_ACCESS_KEY_ID=<YOUR_ACCESS_KEY> -e AWS_SECRET_ACCESS_KEY=<YOUR_SECRET> guitarrapc/s3sync
```

Check [guitarrapc/S3Sync](https://github.com/guitarrapc/S3Sync#docker-support) for more detail.