```shell

2021-01-21T06:53:11.2789106Z ##[section]Starting: Request a runner to run this job
2021-01-21T06:53:11.6842415Z Can't find any online and idle self-hosted runner in current repository that matches the required labels: 'ubuntu-20.04'
2021-01-21T06:53:11.6842520Z Can't find any online and idle self-hosted runner in current repository's account/organization that matches the required labels: 'ubuntu-20.04'
2021-01-21T06:53:11.6842948Z Found online and idle hosted runner in current repository's account/organization that matches the required labels: 'ubuntu-20.04'
2021-01-21T06:53:11.8475652Z ##[section]Finishing: Request a runner to run this job
2021-01-21T06:53:17.9941620Z Current runner version: '2.275.1'
2021-01-21T06:53:17.9972269Z ##[group]Operating System
2021-01-21T06:53:17.9973282Z Ubuntu
2021-01-21T06:53:17.9973853Z 20.04.1
2021-01-21T06:53:17.9974307Z LTS
2021-01-21T06:53:17.9974845Z ##[endgroup]
2021-01-21T06:53:17.9975425Z ##[group]Virtual Environment
2021-01-21T06:53:17.9976145Z Environment: ubuntu-20.04
2021-01-21T06:53:17.9976740Z Version: 20201210.0
2021-01-21T06:53:17.9977834Z Included Software: https://github.com/actions/virtual-environments/blob/ubuntu20/20201210.0/images/linux/Ubuntu2004-README.md
2021-01-21T06:53:17.9978949Z ##[endgroup]
2021-01-21T06:53:17.9982544Z Prepare workflow directory
2021-01-21T06:53:18.0694077Z Prepare all required actions
2021-01-21T06:53:18.0706876Z Getting action download info
2021-01-21T06:53:18.4061431Z Download action repository 'actions/checkout@v2'
2021-01-21T06:53:20.5018295Z Download action repository 'azure/docker-login@v1'
2021-01-21T06:53:21.1900470Z ##[group]Run actions/checkout@v2
2021-01-21T06:53:21.1901149Z with:
2021-01-21T06:53:21.1901810Z   repository: wryyyyyyyy/docker
2021-01-21T06:53:21.1902802Z   token: ***
2021-01-21T06:53:21.1903236Z   ssh-strict: true
2021-01-21T06:53:21.1903778Z   persist-credentials: true
2021-01-21T06:53:21.1904294Z   clean: true
2021-01-21T06:53:21.1904723Z   fetch-depth: 1
2021-01-21T06:53:21.1905131Z   lfs: false
2021-01-21T06:53:21.1905559Z   submodules: false
2021-01-21T06:53:21.1905986Z ##[endgroup]
2021-01-21T06:53:22.3233482Z Syncing repository: wryyyyyyyy/docker
2021-01-21T06:53:22.3235682Z ##[group]Getting Git version info
2021-01-21T06:53:22.3237717Z Working directory is '/home/runner/work/docker/docker'
2021-01-21T06:53:22.3238710Z [command]/usr/bin/git version
2021-01-21T06:53:22.3240033Z git version 2.29.2
2021-01-21T06:53:22.3241493Z ##[endgroup]
2021-01-21T06:53:22.3243126Z Deleting the contents of '/home/runner/work/docker/docker'
2021-01-21T06:53:22.3245766Z ##[group]Initializing the repository
2021-01-21T06:53:22.3246607Z [command]/usr/bin/git init /home/runner/work/docker/docker
2021-01-21T06:53:22.3251641Z Initialized empty Git repository in /home/runner/work/docker/docker/.git/
2021-01-21T06:53:22.3252819Z [command]/usr/bin/git remote add origin https://github.com/wryyyyyyyy/docker
2021-01-21T06:53:22.3254383Z ##[endgroup]
2021-01-21T06:53:22.3255086Z ##[group]Disabling automatic garbage collection
2021-01-21T06:53:22.3256931Z [command]/usr/bin/git config --local gc.auto 0
2021-01-21T06:53:22.3257589Z ##[endgroup]
2021-01-21T06:53:22.3260712Z ##[group]Setting up auth
2021-01-21T06:53:22.3262715Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2021-01-21T06:53:22.3265119Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :
2021-01-21T06:53:22.3267693Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2021-01-21T06:53:22.3271260Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :
2021-01-21T06:53:22.3276922Z [command]/usr/bin/git config --local http.https://github.com/.extraheader AUTHORIZATION: basic ***
2021-01-21T06:53:22.3279241Z ##[endgroup]
2021-01-21T06:53:22.3280723Z ##[group]Fetching the repository
2021-01-21T06:53:22.3283333Z [command]/usr/bin/git -c protocol.version=2 fetch --no-tags --prune --progress --no-recurse-submodules --depth=1 origin +5cd47ab540ccf98df0484faaec72fa88fdb403bb:refs/remotes/origin/develop
2021-01-21T06:53:22.3285629Z remote: Enumerating objects: 60, done.
2021-01-21T06:53:22.3286977Z remote: Counting objects:   1% (1/60)
2021-01-21T06:53:22.3289068Z remote: Counting objects:   3% (2/60)
2021-01-21T06:53:22.3289832Z remote: Counting objects:   5% (3/60)
2021-01-21T06:53:22.3291388Z remote: Counting objects:   6% (4/60)
2021-01-21T06:53:22.3292907Z remote: Counting objects:   8% (5/60)
2021-01-21T06:53:22.3293592Z remote: Counting objects:  10% (6/60)
2021-01-21T06:53:22.3294247Z remote: Counting objects:  11% (7/60)
2021-01-21T06:53:22.3294915Z remote: Counting objects:  13% (8/60)
2021-01-21T06:53:22.3295960Z remote: Counting objects:  15% (9/60)
2021-01-21T06:53:22.3296641Z remote: Counting objects:  16% (10/60)
2021-01-21T06:53:22.3297297Z remote: Counting objects:  18% (11/60)
2021-01-21T06:53:22.3297964Z remote: Counting objects:  20% (12/60)
2021-01-21T06:53:22.3299305Z remote: Counting objects:  21% (13/60)
2021-01-21T06:53:22.3302355Z remote: Counting objects:  23% (14/60)
2021-01-21T06:53:22.3303502Z remote: Counting objects:  25% (15/60)
2021-01-21T06:53:22.3304719Z remote: Counting objects:  26% (16/60)
2021-01-21T06:53:22.3306156Z remote: Counting objects:  28% (17/60)
2021-01-21T06:53:22.3306945Z remote: Counting objects:  30% (18/60)
2021-01-21T06:53:22.3307633Z remote: Counting objects:  31% (19/60)
2021-01-21T06:53:22.3308294Z remote: Counting objects:  33% (20/60)
2021-01-21T06:53:22.3308964Z remote: Counting objects:  35% (21/60)
2021-01-21T06:53:22.3309613Z remote: Counting objects:  36% (22/60)
2021-01-21T06:53:22.3310431Z remote: Counting objects:  38% (23/60)
2021-01-21T06:53:22.3311603Z remote: Counting objects:  40% (24/60)
2021-01-21T06:53:22.3312700Z remote: Counting objects:  41% (25/60)
2021-01-21T06:53:22.3313399Z remote: Counting objects:  43% (26/60)
2021-01-21T06:53:22.3314067Z remote: Counting objects:  45% (27/60)
2021-01-21T06:53:22.3314719Z remote: Counting objects:  46% (28/60)
2021-01-21T06:53:22.3315380Z remote: Counting objects:  48% (29/60)
2021-01-21T06:53:22.3316042Z remote: Counting objects:  50% (30/60)
2021-01-21T06:53:22.3316708Z remote: Counting objects:  51% (31/60)
2021-01-21T06:53:22.3317373Z remote: Counting objects:  53% (32/60)
2021-01-21T06:53:22.3318033Z remote: Counting objects:  55% (33/60)
2021-01-21T06:53:22.3318679Z remote: Counting objects:  56% (34/60)
2021-01-21T06:53:22.3319342Z remote: Counting objects:  58% (35/60)
2021-01-21T06:53:22.3319991Z remote: Counting objects:  60% (36/60)
2021-01-21T06:53:22.3320805Z remote: Counting objects:  61% (37/60)
2021-01-21T06:53:22.3321453Z remote: Counting objects:  63% (38/60)
2021-01-21T06:53:22.3322119Z remote: Counting objects:  65% (39/60)
2021-01-21T06:53:22.3322772Z remote: Counting objects:  66% (40/60)
2021-01-21T06:53:22.3323433Z remote: Counting objects:  68% (41/60)
2021-01-21T06:53:22.3324086Z remote: Counting objects:  70% (42/60)
2021-01-21T06:53:22.3324754Z remote: Counting objects:  71% (43/60)
2021-01-21T06:53:22.3325410Z remote: Counting objects:  73% (44/60)
2021-01-21T06:53:22.3326084Z remote: Counting objects:  75% (45/60)
2021-01-21T06:53:22.3326742Z remote: Counting objects:  76% (46/60)
2021-01-21T06:53:22.3327400Z remote: Counting objects:  78% (47/60)
2021-01-21T06:53:22.3328052Z remote: Counting objects:  80% (48/60)
2021-01-21T06:53:22.3328712Z remote: Counting objects:  81% (49/60)
2021-01-21T06:53:22.3329362Z remote: Counting objects:  83% (50/60)
2021-01-21T06:53:22.3330036Z remote: Counting objects:  85% (51/60)
2021-01-21T06:53:23.0013423Z remote: Counting objects:  86% (52/60)
2021-01-21T06:53:23.0034887Z remote: Counting objects:  88% (53/60)
2021-01-21T06:53:23.0035736Z remote: Counting objects:  90% (54/60)
2021-01-21T06:53:23.0036433Z remote: Counting objects:  91% (55/60)
2021-01-21T06:53:23.0037094Z remote: Counting objects:  93% (56/60)
2021-01-21T06:53:23.0037887Z remote: Counting objects:  95% (57/60)
2021-01-21T06:53:23.0038549Z remote: Counting objects:  96% (58/60)
2021-01-21T06:53:23.0039622Z remote: Counting objects:  98% (59/60)
2021-01-21T06:53:23.0040278Z remote: Counting objects: 100% (60/60)
2021-01-21T06:53:23.0042832Z remote: Counting objects: 100% (60/60), done.
2021-01-21T06:53:23.0043592Z remote: Compressing objects:   1% (1/54)
2021-01-21T06:53:23.0044334Z remote: Compressing objects:   3% (2/54)
2021-01-21T06:53:23.0045047Z remote: Compressing objects:   5% (3/54)
2021-01-21T06:53:23.0045776Z remote: Compressing objects:   7% (4/54)
2021-01-21T06:53:23.0046487Z remote: Compressing objects:   9% (5/54)
2021-01-21T06:53:23.0047206Z remote: Compressing objects:  11% (6/54)
2021-01-21T06:53:23.0048677Z remote: Compressing objects:  12% (7/54)
2021-01-21T06:53:23.0050127Z remote: Compressing objects:  14% (8/54)
2021-01-21T06:53:23.0050980Z remote: Compressing objects:  16% (9/54)
2021-01-21T06:53:23.0052069Z remote: Compressing objects:  18% (10/54)
2021-01-21T06:53:23.0052814Z remote: Compressing objects:  20% (11/54)
2021-01-21T06:53:23.0053544Z remote: Compressing objects:  22% (12/54)
2021-01-21T06:53:23.0054246Z remote: Compressing objects:  24% (13/54)
2021-01-21T06:53:23.0054975Z remote: Compressing objects:  25% (14/54)
2021-01-21T06:53:23.0055682Z remote: Compressing objects:  27% (15/54)
2021-01-21T06:53:23.0057188Z remote: Compressing objects:  29% (16/54)
2021-01-21T06:53:23.0057935Z remote: Compressing objects:  31% (17/54)
2021-01-21T06:53:23.0058664Z remote: Compressing objects:  33% (18/54)
2021-01-21T06:53:23.0059358Z remote: Compressing objects:  35% (19/54)
2021-01-21T06:53:23.0060088Z remote: Compressing objects:  37% (20/54)
2021-01-21T06:53:23.0061686Z remote: Compressing objects:  38% (21/54)
2021-01-21T06:53:23.0063089Z remote: Compressing objects:  40% (22/54)
2021-01-21T06:53:23.0063831Z remote: Compressing objects:  42% (23/54)
2021-01-21T06:53:23.0065116Z remote: Compressing objects:  44% (24/54)
2021-01-21T06:53:23.0065870Z remote: Compressing objects:  46% (25/54)
2021-01-21T06:53:23.0067240Z remote: Compressing objects:  48% (26/54)
2021-01-21T06:53:23.0067950Z remote: Compressing objects:  50% (27/54)
2021-01-21T06:53:23.0068679Z remote: Compressing objects:  51% (28/54)
2021-01-21T06:53:23.0069920Z remote: Compressing objects:  53% (29/54)
2021-01-21T06:53:23.0071614Z remote: Compressing objects:  55% (30/54)
2021-01-21T06:53:23.0072384Z remote: Compressing objects:  57% (31/54)
2021-01-21T06:53:23.0073119Z remote: Compressing objects:  59% (32/54)
2021-01-21T06:53:23.0074567Z remote: Compressing objects:  61% (33/54)
2021-01-21T06:53:23.0075959Z remote: Compressing objects:  62% (34/54)
2021-01-21T06:53:23.0076761Z remote: Compressing objects:  64% (35/54)
2021-01-21T06:53:23.0077498Z remote: Compressing objects:  66% (36/54)
2021-01-21T06:53:23.0078789Z remote: Compressing objects:  68% (37/54)
2021-01-21T06:53:23.0080174Z remote: Compressing objects:  70% (38/54)
2021-01-21T06:53:23.0080883Z remote: Compressing objects:  72% (39/54)
2021-01-21T06:53:23.0081760Z remote: Compressing objects:  74% (40/54)
2021-01-21T06:53:23.0083030Z remote: Compressing objects:  75% (41/54)
2021-01-21T06:53:23.0084436Z remote: Compressing objects:  77% (42/54)
2021-01-21T06:53:23.0085044Z remote: Compressing objects:  79% (43/54)
2021-01-21T06:53:23.0085657Z remote: Compressing objects:  81% (44/54)
2021-01-21T06:53:23.0086805Z remote: Compressing objects:  83% (45/54)
2021-01-21T06:53:23.0087422Z remote: Compressing objects:  85% (46/54)
2021-01-21T06:53:23.0088616Z remote: Compressing objects:  87% (47/54)
2021-01-21T06:53:23.0089228Z remote: Compressing objects:  88% (48/54)
2021-01-21T06:53:23.0089840Z remote: Compressing objects:  90% (49/54)
2021-01-21T06:53:23.0092333Z remote: Compressing objects:  92% (50/54)
2021-01-21T06:53:23.0093145Z remote: Compressing objects:  94% (51/54)
2021-01-21T06:53:23.0093858Z remote: Compressing objects:  96% (52/54)
2021-01-21T06:53:23.0094577Z remote: Compressing objects:  98% (53/54)
2021-01-21T06:53:23.0095863Z remote: Compressing objects: 100% (54/54)
2021-01-21T06:53:23.0097292Z remote: Compressing objects: 100% (54/54), done.
2021-01-21T06:53:23.0099663Z remote: Total 60 (delta 2), reused 49 (delta 1), pack-reused 0
2021-01-21T06:53:23.0105999Z From https://github.com/wryyyyyyyy/docker
2021-01-21T06:53:23.0108174Z  * [new ref]         5cd47ab540ccf98df0484faaec72fa88fdb403bb -> origin/develop
2021-01-21T06:53:23.0109236Z ##[endgroup]
2021-01-21T06:53:23.0109938Z ##[group]Determining the checkout info
2021-01-21T06:53:23.0110579Z ##[endgroup]
2021-01-21T06:53:23.0111533Z ##[group]Checking out the ref
2021-01-21T06:53:23.0112760Z [command]/usr/bin/git checkout --progress --force -B develop refs/remotes/origin/develop
2021-01-21T06:53:23.0113887Z Switched to a new branch 'develop'
2021-01-21T06:53:23.0114917Z Branch 'develop' set up to track remote branch 'develop' from 'origin'.
2021-01-21T06:53:23.0115694Z ##[endgroup]
2021-01-21T06:53:23.0116474Z [command]/usr/bin/git log -1 --format='%H'
2021-01-21T06:53:23.0117565Z '5cd47ab540ccf98df0484faaec72fa88fdb403bb'
2021-01-21T06:53:23.0247340Z ##[group]Run azure/docker-login@v1
2021-01-21T06:53:23.0247844Z with:
2021-01-21T06:53:23.0248270Z   login-server: ghcr.io
2021-01-21T06:53:23.0248845Z   username: ${GITHUB_REPOSITORY_OWNER}
2021-01-21T06:53:23.0249414Z   password: ${CONTAINER_TOKEN}
2021-01-21T06:53:23.0249892Z ##[endgroup]
2021-01-21T06:53:23.0717854Z DOCKER_CONFIG environment variable is set
2021-01-21T06:53:23.0858035Z ##[group]Run ./setup.sh
2021-01-21T06:53:23.0859175Z [36;1m./setup.sh[0m
2021-01-21T06:53:23.0907827Z shell: /usr/bin/bash -e {0}
2021-01-21T06:53:23.0908272Z env:
2021-01-21T06:53:23.0908808Z   DOCKER_CONFIG: /home/runner/work/_temp/docker_login_1611212003065
2021-01-21T06:53:23.0909388Z ##[endgroup]
2021-01-21T06:53:23.1013592Z STAGE SETUP
2021-01-21T06:53:23.1099126Z --2021-01-21 06:53:23--  https://www.busybox.net/downloads/binaries/1.30.0-i686/busybox
2021-01-21T06:53:23.2594000Z Resolving www.busybox.net (www.busybox.net)... 140.211.167.122
2021-01-21T06:53:23.3189910Z Connecting to www.busybox.net (www.busybox.net)|140.211.167.122|:443... connected.
2021-01-21T06:53:23.5145223Z HTTP request sent, awaiting response... 200 OK
2021-01-21T06:53:23.5146347Z Length: 975004 (952K)
2021-01-21T06:53:23.5151299Z Saving to: ‘busybox’
2021-01-21T06:53:23.5734369Z
2021-01-21T06:53:23.6326303Z      0K .......... .......... .......... .......... ..........  5%  423K 2s
2021-01-21T06:53:23.6919790Z     50K .......... .......... .......... .......... .......... 10%  844K 2s
2021-01-21T06:53:23.6922417Z    100K .......... .......... .......... .......... .......... 15%  130M 1s
2021-01-21T06:53:23.7511998Z    150K .......... .......... .......... .......... .......... 21%  848K 1s
2021-01-21T06:53:23.7515112Z    200K .......... .......... .......... .......... .......... 26%  116M 1s
2021-01-21T06:53:23.7519376Z    250K .......... .......... .......... .......... .......... 31%  114M 1s
2021-01-21T06:53:23.7522964Z    300K .......... .......... .......... .......... .......... 36%  134M 0s
2021-01-21T06:53:23.8103353Z    350K .......... .......... .......... .......... .......... 42%  863K 0s
2021-01-21T06:53:23.8147549Z    400K .......... .......... .......... .......... .......... 47% 10.9M 0s
2021-01-21T06:53:23.8151067Z    450K .......... .......... .......... .......... .......... 52%  128M 0s
2021-01-21T06:53:23.8154539Z    500K .......... .......... .......... .......... .......... 57%  132M 0s
2021-01-21T06:53:23.8159065Z    550K .......... .......... .......... .......... .......... 63%  118M 0s
2021-01-21T06:53:23.8164687Z    600K .......... .......... .......... .......... .......... 68%  101M 0s
2021-01-21T06:53:23.8168607Z    650K .......... .......... .......... .......... .......... 73%  109M 0s
2021-01-21T06:53:23.8172549Z    700K .......... .......... .......... .......... .......... 78%  116M 0s
2021-01-21T06:53:23.8697584Z    750K .......... .......... .......... .......... .......... 84%  957K 0s
2021-01-21T06:53:23.8700024Z    800K .......... .......... .......... .......... .......... 89%  106M 0s
2021-01-21T06:53:23.8739093Z    850K .......... .......... .......... .......... .......... 94% 12.8M 0s
2021-01-21T06:53:23.8742511Z    900K .......... .......... .......... .......... .......... 99%  120M 0s
2021-01-21T06:53:23.8744090Z    950K ..                                                    100% 37.1M=0.4s
2021-01-21T06:53:23.8744406Z
2021-01-21T06:53:23.8746779Z 2021-01-21 06:53:23 (2.58 MB/s) - ‘busybox’ saved [975004/975004]
2021-01-21T06:53:23.8747143Z
2021-01-21T06:53:23.9730018Z uid=0(root) gid=0(root) groups=0(root)
2021-01-21T06:53:23.9759839Z SETUP PASSED
2021-01-21T06:53:23.9779599Z STAGE BUILD
2021-01-21T06:53:24.8550640Z Sending build context to Docker daemon  978.4kB
2021-01-21T06:53:24.8551641Z
2021-01-21T06:53:24.8603341Z Step 1/3 : FROM scratch
2021-01-21T06:53:24.8605313Z  --->
2021-01-21T06:53:24.8607046Z Step 2/3 : COPY . /
2021-01-21T06:53:24.9908020Z  ---> 58489d044ede
2021-01-21T06:53:24.9971830Z Step 3/3 : ENTRYPOINT ["/bin/busybox"]
2021-01-21T06:53:25.1626816Z  ---> Running in 4c708f00e62f
2021-01-21T06:53:26.0099852Z Removing intermediate container 4c708f00e62f
2021-01-21T06:53:26.0156181Z  ---> 250fc02158c1
2021-01-21T06:53:26.0156962Z Successfully built 250fc02158c1
2021-01-21T06:53:26.0157886Z Successfully tagged busybox-bin:latest
2021-01-21T06:53:26.0702230Z REPOSITORY          TAG                 IMAGE ID            CREATED             SIZE
2021-01-21T06:53:26.0709371Z busybox-bin         latest              250fc02158c1        1 second ago        975kB
2021-01-21T06:53:26.0750803Z BUILD PASSED
2021-01-21T06:53:26.0764695Z STAGE TEST
2021-01-21T06:53:26.5373590Z BusyBox v1.30.0 (2018-12-30 22:25:27 CET) multi-call binary.
2021-01-21T06:53:26.5374997Z BusyBox is copyrighted by many authors between 1998-2015.
2021-01-21T06:53:26.5380306Z Licensed under GPLv2. See source distribution for detailed
2021-01-21T06:53:26.5381708Z copyright notices.
2021-01-21T06:53:26.5382987Z
2021-01-21T06:53:26.5384119Z Usage: busybox [function [arguments]...]
2021-01-21T06:53:26.5386614Z    or: busybox --list[-full]
2021-01-21T06:53:26.5387320Z    or: busybox --show SCRIPT
2021-01-21T06:53:26.5387981Z    or: busybox --install [-s] [DIR]
2021-01-21T06:53:26.5388490Z    or: function [arguments]...
2021-01-21T06:53:26.5388818Z
2021-01-21T06:53:26.5389532Z    BusyBox is a multi-call binary that combines many common Unix
2021-01-21T06:53:26.5390406Z    utilities into a single executable.  Most people will create a
2021-01-21T06:53:26.5391184Z    link to busybox for each function they wish to use and BusyBox
2021-01-21T06:53:26.5391854Z    will act like whatever it was invoked as.
2021-01-21T06:53:26.5392239Z
2021-01-21T06:53:26.5392676Z Currently defined functions:
2021-01-21T06:53:26.5393558Z    [, [[, acpid, add-shell, addgroup, adduser, adjtimex, ar, arch, arp,
2021-01-21T06:53:26.5394400Z    arping, ash, awk, base64, basename, bc, blkdiscard, blkid, blockdev,
2021-01-21T06:53:26.5395396Z    bootchartd, brctl, bunzip2, bzcat, bzip2, cal, cat, chat, chattr,
2021-01-21T06:53:26.5396213Z    chgrp, chmod, chown, chpasswd, chpst, chroot, chrt, chvt, cksum, clear,
2021-01-21T06:53:26.5397026Z    cmp, comm, conspy, cp, cpio, crond, crontab, cryptpw, cttyhack, cut,
2021-01-21T06:53:26.5397836Z    date, dc, dd, deallocvt, delgroup, deluser, depmod, devmem, df,
2021-01-21T06:53:26.5398716Z    dhcprelay, diff, dirname, dmesg, dnsd, dnsdomainname, dos2unix, dpkg,
2021-01-21T06:53:26.5399839Z    dpkg-deb, du, dumpkmap, dumpleases, echo, ed, egrep, eject, env,
2021-01-21T06:53:26.5400746Z    envdir, envuidgid, expand, expr, factor, fakeidentd, false, fatattr,
2021-01-21T06:53:26.5401617Z    fbset, fbsplash, fdflush, fdformat, fdisk, fgconsole, fgrep, find,
2021-01-21T06:53:26.5402749Z    findfs, flash_eraseall, flash_lock, flash_unlock, flashcp, flock, fold,
2021-01-21T06:53:26.5403604Z    free, freeramdisk, fsck, fsck.minix, fsfreeze, fstrim, fsync, ftpd,
2021-01-21T06:53:26.5404479Z    ftpget, ftpput, fuser, getopt, getty, grep, groups, gunzip, gzip, halt,
2021-01-21T06:53:26.5411638Z    hd, hdparm, head, hexdump, hexedit, hostid, hostname, httpd, hush,
2021-01-21T06:53:26.5412590Z    hwclock, i2cdetect, i2cdump, i2cget, i2cset, id, ifconfig, ifenslave,
2021-01-21T06:53:26.5413435Z    ifplugd, inetd, init, inotifyd, insmod, install, ionice, iostat, ip,
2021-01-21T06:53:26.5414256Z    ipaddr, ipcalc, ipcrm, ipcs, iplink, ipneigh, iproute, iprule,
2021-01-21T06:53:26.5416098Z    iptunnel, kbd_mode, kill, killall, killall5, klogd, last, less, link,
2021-01-21T06:53:26.5416919Z    linux32, linux64, linuxrc, ln, loadfont, loadkmap, logger, login,
2021-01-21T06:53:26.5417716Z    logname, losetup, lpd, lpq, lpr, ls, lsattr, lsmod, lsof, lspci,
2021-01-21T06:53:26.5419031Z    lsscsi, lsusb, lzcat, lzma, lzop, lzopcat, makedevs, makemime, man,
2021-01-21T06:53:26.5419842Z    md5sum, mdev, mesg, microcom, mkdir, mkdosfs, mke2fs, mkfifo,
2021-01-21T06:53:26.5420664Z    mkfs.ext2, mkfs.minix, mkfs.vfat, mknod, mkpasswd, mkswap, mktemp,
2021-01-21T06:53:26.5421539Z    modinfo, modprobe, more, mount, mountpoint, mpstat, mt, mv, nameif,
2021-01-21T06:53:26.5422825Z    nbd-client, nc, netstat, nice, nl, nmeter, nohup, nologin, nproc, ntpd,
2021-01-21T06:53:26.5423725Z    nuke, od, openvt, partprobe, passwd, paste, patch, pgrep, pidof, ping,
2021-01-21T06:53:26.5424630Z    ping6, pipe_progress, pivot_root, pkill, pmap, popmaildir, poweroff,
2021-01-21T06:53:26.5425683Z    powertop, printenv, printf, ps, pscan, pstree, pwd, pwdx, raidautorun,
2021-01-21T06:53:26.5426907Z    rdate, rdev, readlink, readprofile, realpath, reboot, reformime,
2021-01-21T06:53:26.5428023Z    remove-shell, renice, reset, resize, resume, rev, rm, rmdir, rmmod,
2021-01-21T06:53:26.5429102Z    route, rpm, rpm2cpio, rtcwake, run-init, run-parts, runlevel, runsv,
2021-01-21T06:53:26.5429997Z    runsvdir, rx, script, scriptreplay, sed, sendmail, seq, setarch,
2021-01-21T06:53:26.5430904Z    setconsole, setfattr, setfont, setkeycodes, setlogcons, setpriv,
2021-01-21T06:53:26.5431765Z    setserial, setsid, setuidgid, sh, sha1sum, sha256sum, sha3sum,
2021-01-21T06:53:26.5432616Z    sha512sum, showkey, shred, shuf, slattach, sleep, smemcap, softlimit,
2021-01-21T06:53:26.5433687Z    sort, split, ssl_client, start-stop-daemon, stat, strings, stty, su,
2021-01-21T06:53:26.5434515Z    sulogin, sum, sv, svc, svlogd, svok, swapoff, swapon, switch_root,
2021-01-21T06:53:26.5435437Z    sync, sysctl, syslogd, tac, tail, tar, taskset, tc, tcpsvd, tee,
2021-01-21T06:53:26.5436232Z    telnet, telnetd, test, tftp, tftpd, time, timeout, top, touch, tr,
2021-01-21T06:53:26.5437117Z    traceroute, traceroute6, true, truncate, tty, ttysize, tunctl, tune2fs,
2021-01-21T06:53:26.5438014Z    ubiattach, ubidetach, ubimkvol, ubirename, ubirmvol, ubirsvol,
2021-01-21T06:53:26.5438905Z    ubiupdatevol, udhcpc, udhcpd, udpsvd, uevent, umount, uname,
2021-01-21T06:53:26.5439754Z    uncompress, unexpand, uniq, unix2dos, unlink, unlzma, unlzop, unxz,
2021-01-21T06:53:26.5440627Z    unzip, uptime, users, usleep, uudecode, uuencode, vconfig, vi, vlock,
2021-01-21T06:53:26.5441444Z    volname, w, wall, watch, watchdog, wc, wget, which, who, whoami, whois,
2021-01-21T06:53:26.5442117Z    xargs, xxd, xz, xzcat, yes, zcat, zcip
2021-01-21T06:53:27.5014983Z denied: denied
2021-01-21T06:53:27.5015861Z TEST PASSED
2021-01-21T06:53:27.5034404Z STAGE DEPLOY
2021-01-21T06:53:27.5037822Z The push refers to repository [ghcr.io/wryyyyyyyy/docker/busybox-bin]
2021-01-21T06:53:27.5038702Z bd228b3b006d: Preparing
2021-01-21T06:53:27.5039178Z STAGE DEPLOY FINISHED
2021-01-21T06:53:27.5039645Z STAGE POST
2021-01-21T06:53:27.5040545Z run true build by runner on ubuntu20/Linux in wryyyyyyyy/docker approved by wryyyyyyyy
2021-01-21T06:53:27.5140595Z Post job cleanup.
2021-01-21T06:53:27.6131907Z [command]/usr/bin/git version
2021-01-21T06:53:27.6194930Z git version 2.29.2
2021-01-21T06:53:27.6234289Z [command]/usr/bin/git config --local --name-only --get-regexp core\.sshCommand
2021-01-21T06:53:27.6276155Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp 'core\.sshCommand' && git config --local --unset-all 'core.sshCommand' || :
2021-01-21T06:53:27.6565901Z [command]/usr/bin/git config --local --name-only --get-regexp http\.https\:\/\/github\.com\/\.extraheader
2021-01-21T06:53:27.6611208Z http.https://github.com/.extraheader
2021-01-21T06:53:27.6612922Z [command]/usr/bin/git config --local --unset-all http.https://github.com/.extraheader
2021-01-21T06:53:27.6647433Z [command]/usr/bin/git submodule foreach --recursive git config --local --name-only --get-regexp 'http\.https\:\/\/github\.com\/\.extraheader' && git config --local --unset-all 'http.https://github.com/.extraheader' || :
2021-01-21T06:53:27.6963953Z Cleaning up orphan processes

```
