# CapRover One-Click Apps - raisercostin

Repository url

- <https://caprover-apps.namekis.com/>
  - [See apps](https://caprover-apps.namekis.com/)
- fallback at <https://raw.githubusercontent.com/raisercostin/caprover-raisercostin-apps/master/dist/>
  - [See apps](https://html-preview.github.io/?url=https://raw.githubusercontent.com/raisercostin/caprover-raisercostin-apps/main/dist/index.html)

## History

- 2024-08-03
  - added arguman - See arguman.org
  - Imported wireguard from <https://github.com/caprover/one-click-apps/pull/1003>

## TODO

- [ ] Add wireguard-ui <https://github.com/ngoduykhanh/wireguard-ui/blob/master/examples/docker-compose/linuxserver.yml>
- [ ] Add others from unmerged pull requests

## Installing

Configure repo: `Caprover Dashboard > OneClick Apps/Databases > Add repo to **3rd party repositories:** > Connect`
Visit repository urls above for a list

## Other repos

- <https://github.com/caprover/one-click-apps> original apps
  - With a lot of [app sugestions](https://github.com/caprover/one-click-apps/issues).
  - See a sample of how to create a caprover app from docker compose file
  - What one click apps are - <https://caprover.com/docs/one-click-apps.html>
- <https://github.com/caproverhub/caprover-one-click-apps> - Inspired initial version of this repo. Thanks.
- imported
  - [x] <https://github.com/uhlhosting/caprover-one-click-apps>
  - [x] <https://github.com/Jordan-Hall/caprover-one-click-apps>

## Host your own repository

Before you do that write your app and test it as explained here - <https://github.com/caprover/one-click-apps?tab=readme-ov-file#test-your-one-click-apps>

### 1) Github Dist Repo

The simplest, direct method: compile locally and commit `./dist` dir. You could distribute on a different branch or other git repo.

**Repository app**: <https://raw.githubusercontent.com/raisercostin/caprover-raisercostin-apps/main/dist>

See [dist/](dist/) for content

- 🍴 Fork this repository
- 🗑️ Delete all existing apps (to avoid duplicate apps), and add your own apps.
- 🛠️ Run `npm install -g pnpm` or `sudo npm install -g pnpm`
- ⚙️ Run `pnpm i`
- 🧪 Run `pnpm run validate`
- 📝 Run `pnpm run format:write`
- 🏗️ Run `pnpm run build`
- 🌐 Now you can host the static content placed in `./dist` directory anywhere you want but simplest is just to commit in this repo.

### 2) Caprover Hosted Repo

Deploy via caprover v2 embeded dockerfile. But you need a caprover up and running.
See <https://github.com/caprover/one-click-apps?tab=readme-ov-file#hosting-your-own-repository-on-a-caprover-instance>

#### With explicit Dockerfile - deprecated - not necessary

**Repository app** <https://caprover-apps.namekis.com/>

- Create a caprover app, mine is `caprover-apps` & DNS or the internal one <https://caprover-apps.cap.namekis.com/>
- Deploy a caprover app with method 3: Deploy from Github/Bitbucket/Gitlab
  - This will build via [Dockerfile](Dockerfile) and create a image with the repository
- Enable https since the images will be retrieved from your server and if not secure will not be displayed in chrome (not mixed with https)

### 3) GithubPages Repo

The only advantage is that it keeps the dist dir not commited.

- See <https://github.com/caproverhub/caprover-one-click-apps> for details: configure github pages, actions, runners, etc.
