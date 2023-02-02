+++
author = "Ric Harvey"
title = "Enable Cost and Usage Reports (CUR)"
date = "2023-01-31"
description = "Enable cost and usage reporting"
tags = [
    "aws",
]
+++

### Why choose CUR?

In order to analyse your AWS billing in detail you need to switch on Cost and Usage Reporting (CUR). This allows you to see a very fine grained report on your billing data, from on-demand costs to how much of your RI or savings plan is being used. When working with SquareCows we'll ask you to enable this and run the data for at least 30 days in order to cacth month begining and end, which should give us a good idea of your standard usage of AWS and make more informed cost savings calculations.

#### To create Cost and Usage Reports

- Sign in to the Billing and Cost Management console at https://console.aws.amazon.com/billing/home#/
- On the navigation pane, choose Cost & Usage Reports.
- Choose __Create report__.
- For Report name, enter a name for your report.
- For Additional report details, select Include resource IDs to include the IDs of each individual resource in the report.
'''
Note
Including resource IDs will create individual line items for each of your resources. This can increase the size of your Cost and Usage Reports files significantly, based on your AWS usage.
'''
- For Data refresh settings, select whether you want the AWS Cost and Usage Reports to refresh if AWS applies refunds, credits, or support fees to your account after finalizing your bill. When a report refreshes, a new report is uploaded to Amazon S3.
- Choose Next.
- For S3 bucket, choose Configure.
- In the Configure S3 Bucket dialog box, do one of the following:
  - Select an existing bucket from the drop down list and choose Next.
  - Enter a bucket name and the Region where you want to create a new bucket and choose Next.
- Review the bucket policy, and select I have confirmed that this policy is correct and choose Save.
- For Report path prefix, enter the report path prefix that you want prepended to the name of your report.
- For Time granularity, choose one of the following:
  - Hourly if you want the line items in the report to be aggregated by the hour.
  - Daily if you want the line items in the report to be aggregated by the day.
  - Monthly if you want the line items in the report to be aggregated by month.
- For Report versioning, choose whether you want each version of the report to overwrite the previous version of the report or to be delivered in addition to the previous versions.
Overwriting reports can save on Amazon S3 storage costs. Delivering new report versions can improve auditability of billing data over time.
- For Enable report data integration for, select to enable your Cost and Usage Reports to integrate with Amazon Athena. The report is compressed in the following formats:
  - Athena: parquet format
- Choose Next.
- After you have reviewed the settings for your report, choose Review and Complete.
