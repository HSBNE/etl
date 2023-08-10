# Meltano ETL

## Xero

### Authentication

To generate/bootstrap the authentication you use the [postman collection](https://github.com/XeroAPI/xero-postman-oauth2). Use the secrets in the .env file
to set the `client_id` and `client_secret`, set the `redirect_uri` to `https://hsbne.org`. Scopes is set by the application already so you can leave it blank.

Always use the top level account when connecting things, in this case the Xero subscriber account which is `treasurer@hsbne.org`

Once you have a token generated, provide the refresh token to the meltano config.

The scopes are, nominally:

```
accounting.transactions.read offline_access openid profile email projects.read payroll.settings.read payroll.payslip.read payroll.payruns.read payroll.employees.read files.read assets.read accounting.transactions accounting.attachments.read accounting.settings.read accounting.journals.read accounting.budgets.read accounting.reports.tenninetynine.read accounting.reports.read accounting.contacts.read payroll.timesheets.read
```

The application settings for the API credentials are found at [developer.xero.com](https://developer.xero.com/app/manage/app/7819ae2d-0f9e-4611-8b1a-777e561fbf1a).
