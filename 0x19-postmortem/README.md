## Postmortem: Web Application Outage on 2024-08-18

### Issue Summary
##### Duration:
Start: 2024-08-18, 14:15 UTC
End: 2024-08-18, 16:45 UTC

### Impact:
During the outage, approximately 75% of users experienced extremely slow page load times, with some pages timing out entirely. The issue primarily affected our primary web application, causing significant disruptions to user sessions. The service's responsiveness was severely degraded, leading to user frustration and potential loss of business.
### Root Cause:
The root cause was an unexpected surge in traffic, combined with a misconfigured database connection pool, which led to a bottleneck in database queries. This caused the application server to become overwhelmed, resulting in slow or failed responses.
### Timeline
- 14:15 UTC - Issue detected by automated monitoring alerts indicating high latency and error rates.
- 14:17 UTC - On-call engineer reviews the alert and verifies the issue, noticing the slow response times.
- 14:20 UTC - Initial assumption: A network issue might be causing the latency. Network team is contacted to investigate.
- 14:25 UTC - Network team reports no issues. Focus shifts to the application layer.
- 14:35 UTC - Application logs reveal slow database queries. Assumption: Possible database server overload.
- 14:40 UTC - Database team checks server load but finds normal CPU and memory usage. Assumes potential query optimization issue.
- 15:00 UTC - Investigation into recent code changes begins, but no significant changes were made recently. Effort to roll back recent deployments is considered but deemed unnecessary after further investigation.
- 15:20 UTC - Deeper inspection reveals an increase in traffic due to a marketing campaign. Database connection pool limits are identified as a bottleneck.
- 15:30 UTC - Application and database teams collaborate to increase connection pool size and optimize query handling.
- 16:00 UTC - Configuration changes are deployed. Latency begins to decrease.
- 16:45 UTC - Monitoring confirms that the issue is resolved, and all systems are back to normal.
### Root Cause and Resolution
The root cause of the outage was a misconfigured database connection pool that could not handle the increased load caused by an unexpected traffic surge from a marketing campaign. The connection pool was configured with a limit too low for the incoming traffic, leading to a bottleneck. As more requests piled up, the application server struggled to process them in a timely manner, causing slow response times and timeouts.<br>
To resolve the issue, we increased the database connection pool size and optimized the query handling process to manage the traffic surge more effectively. Additionally, non-essential background processes were temporarily paused to free up resources, allowing the system to stabilize. Once these changes were deployed, the application performance improved, and normal operations resumed.
### Corrective and Preventative Measures
#### Improvements:
- Implemented more robust monitoring of connection pool usage and database query performance.
- Improved alerting to notify the team of sudden traffic spikes or resource exhaustion.
- Conducted a review of traffic handling capacity to ensure the system can scale better in response to surges.
#### Task List:
- Increase the database connection pool size permanently to accommodate future traffic spikes.
- Add real-time monitoring for database connection pool metrics.
- Set up automatic scaling for the application servers to handle traffic surges.
- Conduct load testing regularly to identify potential bottlenecks in the system.
- Update incident response playbooks to include detailed steps for investigating and resolving database-related performance issues.