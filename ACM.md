# AWS Certificate Manager

- Easily provision, manage, and deploy **TLS Certificates**
- Provide in-flight encryption for websites HTTPS
- Supports both public and private TLS certificates
- Free of charge for public TLS certificates
- Automatic TLS certificate renewal
- Integrations with:
    - Elastic Load Balancers (CLB, ALB, NLB)
    - CloudFront
    - API Gateway
- Cannot use CM with EC2

## Requesting Public Certificates
1. List domain names to be included in the certificate:
    - Fully Qualified Domain Name (FQDN): corp.example.com
    - Wildcard Domain: *.example.com
2. Select Validation Method: DNS or Email
    - DNS validation is preferred for automation purpose
    - Email validation will send emails to contact addressses in the WHOIS database
    - DNS validation will leverage a CNAME record to DNS config (ex: Route53)
3. Few hours to get verified
4. Public Certificate will be enrolled for automatic renewal 60 days before expiry