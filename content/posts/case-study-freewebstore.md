+++
author = "Ric Harvey"
title = "Case Study: Freewebstore.com"
date = "2023-02-02"
description = "Freewebstore.com case study and bennifits of working with SquareCOws"
tags = [
    "aws",
]
+++

# Case Study: Freewebstore

## About Freewebstore
Freewebstore is the world's largest free eCommerce platform, allowing 7000+ customers access to selling their goods online. Formed in 2008, the business has grown from the data centre into the cloud and uses AWS exclusively. The company operates from its HQ in Burnley, Lancashire, UK. 

## Challenges: Cost Optimization with no performance degradation
Freewebstore is a small but advanced user of AWS. They consume many AWS products and need to drive down monthly costs without affecting performance. Performance matters to Freewebstore as its customers expect a snappy response for their management platform and their customer's shopping experience.

## Why AWS and Squarecows
Freewebstore chose AWS for its wide range of services above and beyond simple compute, such as Kinesis and Redshift. When engaging with Squarecows, it was clear they could use our experience in infrastructure and cost management to reduce their monthly bill. Freewebstore had already gone through one cost optimisation phase, migrating from a lift and shift architecture to utilising cloud-native services more. Squarecows were able to help them take their new architecture and rationalise it.

## Innovation with AWS Services
Freewebstore’s primary platform is on EC2. However, lambda has been introduced, and core functionality is being moved out of the monolith into key functions. Database-wise, Freewebstore is currently completing an MS SQL to DynamoDB migration. Other core systems used by Freewebstore are listed below:

- EC2: core infrastructure for the platform makes it easy to scale with load.
- RDS: Used for core product databases and customer details. MS SQL and MySQL variants are used.
- DynamoDB: a new database for products and customers
- Lambda: innovating with new features whilst not disrupting the core system
- S3: Used for product asset storage, leveraging cheaper storage as opposed to EBS
- CloudFront: used to deliver the site smoothly and quickly to a global audience
- Redshift: used to log transactions and audit the main site
- Elasticache: used for several functions of the store operation
- Kinesis: used for logging and clickstream data
- Route53: used as the primary DNS for freewebstore

## The Squarecows effect
Squarecows took a holistic view of the billing and identified eight key focus areas for reducing the bill. This ranged from tuning DNS TTL’s to savings plan advice and purchase. Freewebstore was presented with a simple 3-page report that identified overspending and offered practical advice on reducing the bill. Freewebstore implemented all the changes and quickly saw a reduction in their monthly spending on AWS and, in some places, saw an improvement in performance over their previous state.

'''
“The mix of cost optimisation and solution architecture knowledge makes Squarecows stand out above the rest.” - Martin Hermansen, Freewebstore Founder and CTO
'''

## The Benefits 

- 26% saving on their monthly bill
- 15% performance boost on core infrastructure
- 75% less in memory infrastructure to manage after consolidation

## How to get in touch
If you’d like to work with SquareCows you can quickly get in touch via email: billshock@squarecows.com; we’d love to hear from you.

