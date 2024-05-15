# BHEH-SUB-PWNER *CONTAINERIZED*

This bash script tool, will perform advanced subdomain enumeration using both Amass in Passive Mode, Sublist3r, save the results, it will then probe the subdomains into urls using httpx, save the results in a separate file, it will then resolve all the subdomains into ip addresses using a loop statement with hostname and grep/sed and save the results separately.

**This fork makes the following adjustments:**
- Containerized all the apps in the pipeline to prevent any dependency issues.

**Coming soon:**
- Outputs files to a folder desginated by user.
- If the user doesn't specify a folder location, it creates one by default.
- Ensures unique names of output files so they don't overwrite or append each other.
- Piping directly into nmap for seamless workflow.

# Requirements:

Docker:
```
sudo apt install docker-ce

```

# Usage

```
docker run -i sub-pwner [input file]

```

# Credits:

This code is written by Black Hat Ethical Hacking, is free to use, and you can fork it, and expand it to perform better methodology and workflow! - 2022

This code was forked and modified by b3mt3vi. - 2024

# Support

If you would like to support us, you can always buy us coffee(s)! :blush:

<a href="https://www.buymeacoffee.com/b3mt3vi" target="_blank"><img src="https://cdn.buymeacoffee.com/buttons/default-orange.png" alt="Buy Me A Coffee" height="41" width="174"></a>
