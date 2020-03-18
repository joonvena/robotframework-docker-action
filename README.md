# Robot Framework Docker Action

This action runs Robot Framework tests using [ppodgorsek](https://github.com/ppodgorsek/docker-robot-framework) image.

## Example usage

BROWSER, ROBOT_TESTS_DIR & ROBOT_REPORTS_DIR have to be defined.

```jobs:
  robot_test:
    runs-on: ubuntu-latest
    name: Run Robot Framework Tests
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      - name: Robot Framework
        uses: joonvena/robotframework-docker-action@v0.1
        env:
          BROWSER: chrome
          ROBOT_TESTS_DIR: ${{ github.workspace }}/robot_tests
          ROBOT_REPORTS_DIR: ${{ github.workspace }}/reports
```
