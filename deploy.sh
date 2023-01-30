#!/bin/bash

hugo
cd public
aws s3 sync --acl public-read . s3://squarecows.com/
aws cloudfront create-invalidation --distribution-id E3Q2YZ9SA92KQE --paths "/*"
cd ../
