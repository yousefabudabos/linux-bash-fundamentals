# Learning Notes — Linux & Bash Fundamentals

## Week 1 Summary

### Concepts I Understood Well
- Github Workflow
- Bash Scripting
- Logs

### Commands I Use Confidently
- Services
- Github

### Things That Confused Me at First
- Github
- Processes
- Cron jobs

### Mistakes I Made and Fixed
- Typo in whoami → whomai, wrong command: time instead of date, host instead of hostname
- Missing -m flag in git commit
- Missing file extension in git add (system-info instead of system-info.sh)

### Things to Review Later
- awk column selection: $1 $2 $3 refer to columns split by spaces
- 

---

## Quick Reference

### Git Workflow
\`\`\`bash
git checkout -b feature/name  # Branch جديد
git add file.sh               # اختيار الملفات
git commit -m "feat: ..."     # حفظ مع رسالة
git push                      # رفع لـ GitHub
git checkout main             # العودة لـ main
git merge feature/name        # دمج الـ Branch
\`\`\`

### Permissions
\`\`\`
7 = rwx = 4+2+1
6 = rw- = 4+2
4 = r-- = 4
chmod 755 file   # Owner كل شيء، Group وOthers قراءة وتنفيذ
chmod 644 file   # Owner قراءة وكتابة، الباقي قراءة فقط
chmod 600 file   # Owner فقط — للـ Private Keys
\`\`\`

### Cron Syntax
\`\`\`
* * * * * command
│ │ │ │ └── Day/Week
│ │ │ └──── Month
│ │ └────── Day/Month
│ └──────── Hour
└────────── Minute
\`\`\`

### Useful Commands
\`\`\`bash
ps aux | grep nginx      # Search Process
ss -tulpn | grep :80     # Check Port
tail -f /var/log/nginx/access.log  # Monitoring Log
sudo service nginx status/start/stop
\`\`\`


---

## Week 2 — AWS IAM

### Key Concepts
- IAM User: للبشر — Username وPassword وMFA
- IAM Group: لإدارة صلاحيات مجموعة من الـ Users
- IAM Role: للخدمات — صلاحيات مؤقتة بدون Credentials
- IAM Policy: JSON يحدد Allow/Deny على Actions وResources

### Golden Rules
- لا تستخدم Root Account يومياً
- لا تضع Access Keys في الكود أبداً
- Explicit Deny يلغي كل Allow
- دائماً Least Privilege

### Policy Structure
\`\`\`json
{
  "Effect": "Allow or Deny",
  "Action": "s3:GetObject or *",
  "Resource": "arn:aws:s3:::bucket-name or *"
}
\`\`\`


### S3 Bucket
- Create a s3 bucket
- Add bucket policy so anyone can access the website
- Connect aws with my linux os with awscli
- Copying first simple website to s3 bucket
- Upload the website to static web hosting


## Cloudfront - AWS
- Deploying a cloudfront distribution (free https) for the website
- S3 Access control
- understand Defense in path

