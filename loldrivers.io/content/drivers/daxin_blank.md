+++

description = ""
title = "daxin_blank.sys"
weight = 10

+++


{{< block "grid-1" >}}
{{< column "mt-2 pt-1">}}


# daxin_blank.sys ![:inline](/images/twitter_verified.png) 


### Description

Driver used in the Daxin malware campaign.

- **Created**: 2023-02-28
- **Author**: Michael Haag
- **Acknowledgement**:  | [](https://twitter.com/)

### Commands

```
sc.exe create daxin_blank.sys binPath=C:\windows\temp\daxin_blank.sys type=kernel
sc.exe start daxin_blank.sys
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

| Filename | daxin_blank.sys |
|:---- | ---- | 
| MD5 | <a href="https://www.virustotal.com/gui/file/"></a> |
| SHA1 | <a href="https://www.virustotal.com/gui/file/"></a> |
| SHA256 | <a href="https://www.virustotal.com/gui/file/49c827cf48efb122a9d6fd87b426482b7496ccd4a2dbca31ebbf6b2b80c98530">49c827cf48efb122a9d6fd87b426482b7496ccd4a2dbca31ebbf6b2b80c98530</a> |
| Publisher | Anhua Xinda (Beijing) Technology Co., Ltd. |
| Signature | Signed |
| Date | 7:07 AM 1/23/2013 |
| Company | n/a |
| Description | n/a |
| Product | n/a |
| ProductVersion |  |
| FileVersion |  |
| MachineType |  |
| SOriginalFilename |  |



[*source*](https://github.com/magicsword-io/LOLDrivers/tree/main/yaml/daxin_blank.sys.yml)

*last_updated:* 2023-03-10








{{< /column >}}
{{< /block >}}