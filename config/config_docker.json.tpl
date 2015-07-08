{
    "LogSettings": {
        "ConsoleEnable": false,
        "ConsoleLevel": "DEBUG",
        "FileEnable": true,
        "FileLevel": "INFO",
        "FileFormat": "",
        "FileLocation": ""
    },
    "ServiceSettings": {
        "SiteName": "Mattermost",
        "Domain": "",
        "Mode" : "dev",
		"AllowTesting" : false,
        "UseSSL": false,
        "Port": "80",
        "Version": "developer",
        "Shards": {
        },
        "InviteSalt": "gxHVDcKUyP2y1eiyW8S8na1UYQAfq6J6",
        "PublicLinkSalt": "TO3pTyXIZzwHiwyZgGql7lM7DG3zeId4",
        "ResetSalt": "IPxFzSfnDFsNsRafZxz8NaYqFKhf9y2t",
        "AnalyticsUrl": ""
    },
    "SqlSettings": {
        "DriverName": "mysql",
        "DataSource": "{{ MYSQL_USER | default('umattermost') }}:{{ MYSQL_PASSWORD | default('mattermost') }}@tcp({{ MYSQL_HOST | default('mysql') }}:3306)/{{ MYSQL_DATABASE | default('mattermostdb') }}",
        "DataSourceReplicas": ["{{ MYSQL_USER | default('umattermost') }}:{{ MYSQL_PASSWORD | default('mattermost') }}@tcp({{ MYSQL_HOST | default('mysql') }}:3306)/{{ MYSQL_DATABASE | default('mattermostdb') }}"],
        "MaxIdleConns": 10,
        "MaxOpenConns": 10,
        "Trace": false,
        "AtRestEncryptKey": "Ya0xMrybACJ3sZZVWQC7e31h5nSDWZFS"
    },
    "RedisSettings": {
        "DataSource": "{{ REDIS_HOST | default('redis') }}:{{ REDIS_PORT | default('6379') }}",
        "MaxOpenConns": 1000
    },
    "AWSSettings": {
        "S3AccessKeyId": "",
        "S3SecretAccessKey": "",
        "S3Bucket": "",
        "S3Region": "",
        "Route53AccessKeyId": "",
        "Route53SecretAccessKey": "",
        "Route53ZoneId": "",
        "Route53Region": ""
    },
    "ImageSettings": {
        "ThumbnailWidth": 200,
        "ThumbnailHeight": 0,
        "PreviewWidth": 1024,
        "PreviewHeight": 0,
        "ProfileWidth": 128,
        "ProfileHeight": 128
    },
    "EmailSettings": {
        "SMTPUsername": "{{ SMTP_USERNAME | default('') }}",
        "SMTPPassword": "{{ SMTP_PASSWORD | default('') }}",
        "SMTPServer": "{{ SMTP_SERVER | default('localhost') }}:{{ SMTP_PORT | default('25') }}",
		"UseTLS": {{ SMTP_USE_TLS | default('false') }},
        "FeedbackEmail": "",
        "FeedbackName": "",
        "ApplePushServer": "",
        "ApplePushCertPublic": "",
        "ApplePushCertPrivate": ""
    },
    "PrivacySettings": {
        "ShowEmailAddress": true,
        "ShowPhoneNumber": true,
        "ShowSkypeId": true,
        "ShowFullName": true
    },
    "TeamSettings": {
        "MaxUsersPerTeam": 150,
        "AllowPublicLink": true,
        "AllowValet": false,
        "TermsLink": "/static/help/configure_links.html",
        "PrivacyLink": "/static/help/configure_links.html",
        "AboutLink": "/static/help/configure_links.html",
        "HelpLink": "/static/help/configure_links.html",
        "ReportProblemLink": "/static/help/configure_links.html",
        "TourLink": "/static/help/configure_links.html",
        "DefaultThemeColor": "#2389D7"
    }
}
