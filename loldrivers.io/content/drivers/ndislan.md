+++

description = ""
title = "ndislan.sys"
weight = 10

+++


{{< block "grid-1" >}}
{{< column "mt-2 pt-1">}}


# ndislan.sys ![:inline](/images/twitter_verified.png) 


### Description

Driver used in the Daxin malware campaign.

- **Created**: 2023-02-28
- **Author**: Michael Haag
- **Acknowledgement**:  | [](https://twitter.com/)

### Commands

```
sc.exe create ndislan.sys binPath=C:\windows\temp\ndislan.sys type=kernel
sc.exe start ndislan.sys
```

| Use Case | Privilages | Operating System | 
|:---- | ---- | ---- |
| Elevate privileges | kernel | Windows 10 |

### Resources
<br>
<li><a href="https://gist.github.com/MHaggis/9ab3bb795a6018d70fb11fa7c31f8f48">https://gist.github.com/MHaggis/9ab3bb795a6018d70fb11fa7c31f8f48</a></li>
<li><a href="https://symantec-enterprise-blogs.security.com/blogs/threat-intelligence/daxin-backdoor-espionage">https://symantec-enterprise-blogs.security.com/blogs/threat-intelligence/daxin-backdoor-espionage</a></li>
<br>

### Known Vulnerable Samples

| Filename | ndislan.sys |
|:---- | ---- | 
| MD5 | <a href="https://www.virustotal.com/gui/file/"></a> |
| SHA1 | <a href="https://www.virustotal.com/gui/file/"></a> |
| SHA256 | <a href="https://www.virustotal.com/gui/file/b0eb4d999e4e0e7c2e33ff081e847c87b49940eb24a9e0794c6aa9516832c427">b0eb4d999e4e0e7c2e33ff081e847c87b49940eb24a9e0794c6aa9516832c427</a> |
| Publisher | Anhua Xinda (Beijing) Technology Co., Ltd. |
| Signature | A required certificate is not within its validity period when verifying against the current system clock or the timestamp in the signed file. |
| Date | 4:49 PM 10/12/2012 |
| Company | Microsoft Corporation |
| Description | MS LAN Driver |
| Product | Microsoft« Windows« Operating System |
| ProductVersion |  |
| FileVersion |  |
| MachineType |  |
| SOriginalFilename |  |



[*source*](https://github.com/magicsword-io/LOLDrivers/tree/main/yaml/ndislan.sys.yml)

*last_updated:* 2023-03-10








{{< /column >}}
{{< /block >}}