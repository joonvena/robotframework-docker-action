# Robot Framework Docker Action

This action runs Robot Framework tests using [ppodgorsek](https://github.com/ppodgorsek/docker-robot-framework) image.

## Example usage

BROWSER, ROBOT_TESTS_DIR & ROBOT_REPORTS_DIR have to be defined.

jobs:
  robot_test:
    runs-on: ubuntu-latest
    name: Run Robot Framework Tests
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Robot Framework step
        uses: actions/robotframework-docker-action@v1
        env:
          BROWSER: chrome
          ROBOT_TESTS_DIR: ./test
          ROBOT_REPORTS_DIR: ./reports
