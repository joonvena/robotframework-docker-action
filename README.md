> **Note**
> This repo is forked from [joonvena/robotframework-docker-action](https://github.com/joonvena/robotframework-docker-action)

# Robot Framework Docker Action

This action runs Robot Framework tests using [ppodgorsek](https://github.com/ppodgorsek/docker-robot-framework) image.

## Example usage

Run with chrome:

```jobs:
  robot_test:
    runs-on: ubuntu-latest
    name: Run Robot Framework Tests
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Robot Framework
        uses: felipeholek/robotframework-docker-action@master
```

Run with firefox and in parallel:

```jobs:
  robot_test:
    runs-on: ubuntu-latest
    name: Run Robot Framework Tests
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Robot Framework
        uses: felipeholek/robotframework-docker-action@master
        with:
          browser: 'firefox'
          robot_threads: 2
```

Available configurations in with block:

| Name                     | Default                             | Description                                          |
| ------------------------ | ----------------------------------- | ---------------------------------------------------- |
| allowed_shared_memory    | '1g'                                | How much container can use shared memory             |
| browser                  | 'chrome'                            | Available options chrome / firefox                   |
| robot_threads            | 1                                   | Change this > 1 if you want to run tests in parallel |
| pabot_options            | ''                                  | These are only used if robot_threads > 1             |
| robot_options            | ''                                  | Pass extra settings for robot command                |
| screen_color_depth       | 24                                  | Color depth of the virtual screen                    |
| screen_height            | 1080                                | Height of the virtual screen                         |
| screen_width             | 1920                                | Width of the virtual screen                          |
| robot_tests_dir          | 'robot_tests'                       | Location of tests inside repository                  |
| robot_reports_dir        | 'reports'                           | Location of report output from test execution        |
| robot_runner_image       | 'ppodgorsek/robot-framework:latest' | Docker image which will be used to execute the tests |
