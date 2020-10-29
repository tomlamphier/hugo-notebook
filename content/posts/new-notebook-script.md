---
title: "New Notebook Script"
date: 2020-10-20T21:15:07-04:00
draft: false
author: Tom Lamphier
---
## How to Add a New Notebook
When you add a new notebook to the hugo-notebook site
you clone one of the existing notebooks under hugo-notebook, 
give it a github repo, and do about ten small 
updates that make it ready for new content.

Here is a summary of that process:

1. Copy an existing notebook, say boron to a new
project.  The new name will be an element that alphabetically
follows the last notebook.

2. Temporarily remove .git files, book theme.  Set base URL in config.toml.  Ensure branch in .travis.yml
is main.  Update folder ID in Makefile for S3 bucket.

3. git init, add back .gitignore. git add --all,
git commit.  

4. Go to themes.gohugo.io/hugo-book, get install cmds & run them to
add book theme as a git sub-project.  Do git add --all, commit. New
github repo, follow instructions for first push -u origin main.

5. Remove encrypted AWS credentials from .travis.yml. Go to travis-ci-com ->
settings -> add new github repo to list. 

6. travis encrypt --pro AWS_ACCESS_KEY_ID=<cut & paste key frpm Downloads/travis> --add
   say yes to repo
   travis encrypt --pro AWS_SECRET_ACCESS_KEY=<cut & paste key> --add
   Do git add, commit, push.
   
7. Travis should kick off a build/deploy. Check travis-ci.com.

8. Update list of notebooks in hugo-notebook/themes/basic/layouts/index.html, git add, commit, push.
