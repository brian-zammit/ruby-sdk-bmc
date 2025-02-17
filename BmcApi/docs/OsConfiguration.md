# BmcApi::OsConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **windows** | [**OsConfigurationWindows**](OsConfigurationWindows.md) |  | [optional] |
| **root_password** | **String** | Password set for user root on an ESXi server which will only be returned in response to provisioning a server. | [optional][readonly] |
| **management_ui_url** | **String** | The URL of the management UI which will only be returned in response to provisioning a server. | [optional][readonly] |
| **management_access_allowed_ips** | **Array&lt;String&gt;** | List of IPs allowed to access the Management UI. Supported in single IP, CIDR and range format. When undefined, Management UI is disabled. This will only be returned in response to provisioning a server. | [optional] |

## Example

```ruby
require 'pnap_bmc_api'

instance = BmcApi::OsConfiguration.new(
  windows: null,
  root_password: MyP@ssw0rd_01,
  management_ui_url: https://172.217.22.14,
  management_access_allowed_ips: [&quot;172.217.22.14&quot;,&quot;10.111.14.40/29&quot;,&quot;10.111.14.66 - 10.111.14.71&quot;]
)
```

