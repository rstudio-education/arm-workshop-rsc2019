---
title: AM Session
author: "Jennifer Thompson"

date: "2019-01-16"

draft: false
toc: true
type: docs

linktitle: AM session
menu: day1
---

Welcome! If you chose the [☁️ setup](../../prework/cloud), please enjoy breakfast and walk through these steps before the workshop begins. Our instructors and TAs are available to help!



## Log into our virtual classroom

Go here: http://rstd.io/class

1. Enter our classroom identifier/password (in your email): `advanced-rmarkdown`
1. Enter your name and email address.
1. Leave the toggle button set to "Create new server credentials."

<img src="/img/setup-screencaps/class_login.png" width="75%" />

(Accept the cookies. 🍪) Your credentials will be different, but your screen should look like this. In fact, every person's credentials will be different- don't copy and paste your neighbor's!

<img src="/img/setup-screencaps/login.png" width="75%" />

**Keep this tab open!** You will need these additional credentials later.

Open the URL provided in a new tab. You should see a page with options to connect to RStudio Server Pro and RStudio Connect.

<img src="/img/setup-screencaps/server_connect.png" width="75%" />

**Keep this tab open too!** We'll set up both Server and Connect from here.

## Access RStudio Server Pro

Click `RStudio Server Pro`; you should see a page where you can sign in. You'll use the credentials from that open tab we just came from.

<img src="/img/setup-screencaps/login_creds.png" width="75%" />

Once you're signed in, you should be in a fresh RStudio Server Pro instance. Look in Files; you should see a folder for the course materials already there.

<img src="/img/setup-screencaps/server.png" width="75%" />


## RStudio Connect

### Setup

From the RMarkdown Training Server tab, click the `RStudio Connect` button, then Log In in the top right corner. Use the same credentials as you did for RStudio Server.

Once you're in, you should see something like this (`rstudio-user` will be replaced with your username):

<img src="/img/setup-screencaps/rsc_login.png" width="75%" />

### Connecting Your Account

In order to publish your documents on RStudio Connect, you'll need to connect RStudio Server and RStudio Connect. One way to do this:

Create a template document (flexdashboard is a good one for this). From that document, click the Publish button in RStudio Server.

<img src="/img/setup-screencaps/publish.png" width="75%" />

Choose which document(s) you want to publish. RStudio will then ask for the URL of your RStudio Connect instance. Use the URL on that first open tab, **with one change**: Replace `:[number]` at the end of the URL with `/rsconnect`.

<img src="/img/setup-screencaps/rsc_url.png" width="75%" />

Once you've set up the initial connection, you'll be asked to verify your account. Click "Connect Account" and you should be set!

<img src="/img/setup-screencaps/rsc_verify.png" width="75%" />

### Sharing Your Work {#share}

Throughout the workshop, we may want to share our work on [Gitter](https://gitter.im/arm-austin/Lobby) *(make sure to sign in or create an account if you haven't - an invitation should have been emailed to you in early January).* Default permissions on RStudio Connect are set so that only you can view your files. To change this, you can change the settings on individual projects once you publish them, using the dropdown menu under "Who can view this document."

<img src="/img/setup-screencaps/rsc_share_anyone.png" width="75%" />

### Exporting Your Work {#export}

Feel free to take notes within the files set up for you on RStudio Server! You can export those updated files once the workshop is over. Make sure the files you want to export are checked, and then click `More -> Export`:

<img src="/img/setup-screencaps/server_export.png" width="75%" />

A dialog box will pop up allowing you to name the zip file.

> *These detailed instructions were kindly curated by our TA [Jennifer Thompson](https://jenthompson.me/).*
