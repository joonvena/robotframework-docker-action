# Robot Framework Docker Action

This action runs Robot Framework tests using [nizolli](https://github.com/carlosnizolli/docker-robot-percy/releases/tag/V1.1) image v 1.1.

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

`${{ github.workspace }}`
This is github`s own environment variable that resolves to workspace directory that contains the repository files.

`ROBOT_TEST_DIR`
Defines path where the tests are located

`ROBOT_REPORTS_DIR`
Defines path where results are stored. If directory doesn`t exists its created automatically. 

`BROWSER`
You can use either chrome or firefox as argument

If you want to execute tests in parallel use `ROBOT_THREADS` environment variable eg. `ROBOT_THREADS: 2`.
