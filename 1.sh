version: 2.1
jobs:
  my-job:
    docker:
      - image: cimg/base:stable
    steps:
      - checkout
      - run:
          name: say hello
          command: echo "hello!"
workflows:
  run-jobs:
    jobs:
      - my-job
