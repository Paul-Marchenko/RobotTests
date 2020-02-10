# Installation:
## Install app and libraries
- Install python(Windows)
- Install PyCharm
### Create virtual env and:
- Install selenium
- Install robotframework
- Install robotframework-selenium library
## Add plugins:
- IntelliBot
- IntelliBot@SeleniumLibrary

# Run tests:
`robot testCases\test_case_1.robot`


## Run multiply tests:
`robot testCases\reg*.robot`

`robot testCases\*.robot`

```robot testCases\```

## Run parallel tests:
- install robotframework-pabot(pip install -U robotframework-pabot, and install in pycharm)
### Run by pabot:
`pabot --processes 2 testCases\*.robot` # 2 - two testcase
`pabot --processes 2 --outputdir Results testCases\*.robot` # with report creation
