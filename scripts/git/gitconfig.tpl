[user]
	name = Rob Jentzema
	email = rob@wellnessbon.nl
[github]
	user = greenwellness
	token = ""
[core]
	editor = vim
	whitespace = fix,-indent-with-non-tab,trailing-space,cr-at-eol
	excludesfile = ~/.gitignore
	pager = less -r
[sendemail]
	smtpencryption = tls
	smtpserver = smtp.gmail.com
	smtpuser = rob.jentzema@gmail.com
	smtppass = iamnotstupid
	smtpserverport = 587
[web]
	browser = google-chrome
[instaweb]
	httpd = apache2 -f
[rerere]
	enabled = 1
	autoupdate = 1
[push]
	default = matching
[color]
	ui = auto # covers diff = true, status = auto, branch = auto
  interactive = auto
[color "branch"]
	current = yellow bold
	local = green bold
	remote = cyan bold
[color "diff"]
	meta = yellow bold
	frag = magenta bold
	old = red bold
	new = green bold
	whitespace = red reverse
[color "status"]
	added = green bold
	changed = yellow bold
	untracked = red bold
[diff]
	tool = vimdiff
[difftool]
	prompt = false
[github]
	user = pkumar
	token = token
[gitflow "prefix"]
	feature = feature-
	release = release-
	hotfix = hotfix-
	support = support-
	versiontag = v
[alias]
	a = add .
	ai = add -i
	#############
	ap = apply
	as = apply --stat
	#ac = apply --check
	ac = !git add . && git commit
	acm = !git add . && git commit -m
	alias = !git config --list | grep 'alias\\.' | sed 's/alias\\.\\([^=]*\\)=\\(.*\\)/\\1\\\t => \\2/' | sort
	#############
	ama = am --abort
	amr = am --resolved
	ams = am --skip
	#############
	b = branch
	ba = branch -a
	bd = branch -d
	br = branch -r
	#############
	c = commit
	ca = commit -a
	cm = commit -m
	cem = commit --allow-empty -m
	cam = commit -am
	cd = commit --amend
	cad = commit -a --amend
	ced = commit --allow-empty --amend
	#############
	#d = diff
	d = diff --color-words
	dc = diff --cached
	dl = difftool
	dlc = difftool --cached
	dk = diff --check
	dp = diff --patience
	dck = diff --cached --check
	#############
	f = fetch
	fo = fetch origin
	#############
	fp = format-patch
	#############
	fk = fsck
	#############
	g = grep -p
	#############
	#l = log --oneline
	l = log --graph --pretty=format:'%C(yellow)%h%C(cyan)%d%Creset %s %C(white)- %an, %ar%Creset'
	ll = log --stat --abbrev-commit
	lg = log --oneline --graph --decorate
	#############
	ls = ls-files
	lsf = "!git ls-files | grep -i"
	#############
	m = merge
	ma = merge --abort
	mc = merge --continue
	ms = merge --skip
	#############
	o = checkout
	ob = checkout -b
	#############
	pr = prune -v
	#############
	ps = push
	psf = push -f
	psu = push -u
	pso = push origin
	psao = push --all origin
	psfo = push -f origin
	psuo = push -u origin
	psom = push origin master
	psfom = push -f origin master
	psuom = push -u origin master
	#############
	pl = pull
	plu = pull -u
	plo = pull origin
	plp = pull upstream
	plom = pull origin master
	plpm = pull upstream master
	#############
	pb = pull --rebase
	pbo = pull --rebase origin
	pbp = pull --rebase upstream
	pbom = pull --rebase origin master
	pbpm = pull --rebase upstream master
	pu = !"git fetch origin -v; git fetch upstream -v; git merge upstream/master"
	#############
	rb = rebase
	rba = rebase --abort
	rbc = rebase --continue
	rbi = rebase --interactive
	rbs = rebase --skip
	#############
	re = reset
	rh = reset HEAD
	reh = reset --hard
	rem = reset --mixed
	res = reset --soft
	rehh = reset --hard HEAD
	remh = reset --mixed HEAD
	resh = reset --soft HEAD
	#############
	r = remote
	ra = remote add
	rr = remote rm
	rv = remote -v
	rp = remote prune
	rs = remote show
	rao = remote add origin
	rso = remote show origin
	rpo = remote prune origin
	#############
	s = status
	sb = status -s -b
	#############
	sa = stash apply
	sc = stash clear
	sd = stash drop
	sl = stash list
	sp = stash pop
	ss = stash save
	sw = stash show
	#############
	w = show
	wp = show -p
	wr = show -p --no-color
	#############
	svnr = svn rebase
	svnd = svn dcommit
	svnl = svn log --oneline --show-commit
	#############
	assume = update-index --assume-unchanged
	unassume = update-index --no-assume-unchanged
	assumed = "!git ls-files -v | grep ^h | cut -c 3-"
	unassumeall = !git assumed | xargs git update-index --no-assume-unchanged
	assumeall = "!git st -s | awk {'print $2'} | xargs git assume"
	#############
	ours = "!f() { git checkout --ours $@ && git add $@; }; f"
	theirs = "!f() { git checkout --theirs $@ && git add $@; }; f"
	#############
	whois = "!sh -c 'git log -i -1 --pretty=\"format:%an <%ae>\n\" --author=\"$1\"' -"
	whatis = show -s --pretty='tformat:%h (%s, %ad)' --date=short
	#############
	barebranch = !sh -c 'git symbolic-ref HEAD refs/heads/$1 && git rm --cached -r . && git clean -xfd' -
	flat = clone --depth 1
	subpull = !git submodule foreach git pull --tags origin master
	subrepo = !sh -c 'filter-branch --prune-empty --subdirectory-filter $1 master' -
	human = name-rev --name-only --refs=refs/heads/*
	serve = !git daemon --reuseaddr --verbose  --base-path=. --export-all ./.git
	snapshot = !git stash save "snapshot: $(date)" && git stash apply "stash@{0}"



