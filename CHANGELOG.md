# Change Log

## [0.5.0](https://github.com/clojerl/try_clojerl/tree/0.5.0)

[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.4.2...0.5.0)

**Implemented enhancements:**

- Support for adding tutorials to guide visitors on what can be done with Clojerl [\#50](https://github.com/clojerl/try_clojerl/issues/50)

**Merged pull requests:**

- \[\#50\] Acknowledge and add license from Raynes/tryclojure  [\#52](https://github.com/clojerl/try_clojerl/pull/52) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#50\] Tutorials [\#51](https://github.com/clojerl/try_clojerl/pull/51) ([jfacorro](https://github.com/jfacorro))

## [0.4.2](https://github.com/clojerl/try_clojerl/tree/0.4.2) (2017-12-19)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.4.1...0.4.2)

**Implemented enhancements:**

- Printing with io/format doesn't end up in the REPL  [\#48](https://github.com/clojerl/try_clojerl/issues/48)

**Merged pull requests:**

- \[Closes \#48\] io/format output not showing [\#49](https://github.com/clojerl/try_clojerl/pull/49) ([jfacorro](https://github.com/jfacorro))

## [0.4.1](https://github.com/clojerl/try_clojerl/tree/0.4.1) (2017-12-02)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.4.0...0.4.1)

**Implemented enhancements:**

- Create a new namespace for each connection [\#46](https://github.com/clojerl/try_clojerl/issues/46)

**Fixed bugs:**

- clje.user doesn't have clojure.repl required [\#44](https://github.com/clojerl/try_clojerl/issues/44)

**Merged pull requests:**

- \[Closes \#46\] Create a new ns per connection  [\#47](https://github.com/clojerl/try_clojerl/pull/47) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#44\] Require the standard namespaces in clje.user [\#45](https://github.com/clojerl/try_clojerl/pull/45) ([jfacorro](https://github.com/jfacorro))
- Remove .e suffix [\#43](https://github.com/clojerl/try_clojerl/pull/43) ([jfacorro](https://github.com/jfacorro))

## [0.4.0](https://github.com/clojerl/try_clojerl/tree/0.4.0) (2017-11-08)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.3.1...0.4.0)

**Implemented enhancements:**

- Log commands sent [\#41](https://github.com/clojerl/try_clojerl/issues/41)
- Build docker for CentOS VM [\#39](https://github.com/clojerl/try_clojerl/issues/39)

**Merged pull requests:**

- \[Closes \#41\] Log commands [\#42](https://github.com/clojerl/try_clojerl/pull/42) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#39\] build centos docker image [\#40](https://github.com/clojerl/try_clojerl/pull/40) ([jfacorro](https://github.com/jfacorro))

## [0.3.1](https://github.com/clojerl/try_clojerl/tree/0.3.1) (2017-10-27)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.3.0...0.3.1)

**Closed issues:**

- Google analytics [\#37](https://github.com/clojerl/try_clojerl/issues/37)

**Merged pull requests:**

- \[Closes \#37\] Google analytics [\#38](https://github.com/clojerl/try_clojerl/pull/38) ([jfacorro](https://github.com/jfacorro))

## [0.3.0](https://github.com/clojerl/try_clojerl/tree/0.3.0) (2017-10-25)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.2.1...0.3.0)

## [0.2.1](https://github.com/clojerl/try_clojerl/tree/0.2.1) (2017-10-21)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.2.0...0.2.1)

**Implemented enhancements:**

- Pretty print stacktrace [\#5](https://github.com/clojerl/try_clojerl/issues/5)

**Fixed bugs:**

- Only open connection if there is a terminal [\#36](https://github.com/clojerl/try_clojerl/issues/36)

**Closed issues:**

- Wrap lines around and fix terminal width [\#35](https://github.com/clojerl/try_clojerl/issues/35)

## [0.2.0](https://github.com/clojerl/try_clojerl/tree/0.2.0) (2017-10-20)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.1.2...0.2.0)

**Fixed bugs:**

- Blinking cursor disappears when moving [\#26](https://github.com/clojerl/try_clojerl/issues/26)
- Only the first form is read and eval'ed [\#15](https://github.com/clojerl/try_clojerl/issues/15)

**Closed issues:**

- Scripts to starts and stop docker container [\#32](https://github.com/clojerl/try_clojerl/issues/32)
- Add an About page   [\#30](https://github.com/clojerl/try_clojerl/issues/30)
- Log when clients connect and disconnect [\#28](https://github.com/clojerl/try_clojerl/issues/28)

**Merged pull requests:**

- Show count of connected clients [\#34](https://github.com/clojerl/try_clojerl/pull/34) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#32\] Add scripts [\#33](https://github.com/clojerl/try_clojerl/pull/33) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#30\] Add about page [\#31](https://github.com/clojerl/try_clojerl/pull/31) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#28\] Add logging when REPL process starts and terminates [\#29](https://github.com/clojerl/try_clojerl/pull/29) ([jfacorro](https://github.com/jfacorro))

## [0.1.2](https://github.com/clojerl/try_clojerl/tree/0.1.2) (2017-10-16)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.1.1...0.1.2)

**Merged pull requests:**

- Add Clojerl word [\#25](https://github.com/clojerl/try_clojerl/pull/25) ([jfacorro](https://github.com/jfacorro))
- Show Erlang and Clojerl version used [\#24](https://github.com/clojerl/try_clojerl/pull/24) ([jfacorro](https://github.com/jfacorro))

## [0.1.1](https://github.com/clojerl/try_clojerl/tree/0.1.1) (2017-10-14)
[Full Changelog](https://github.com/clojerl/try_clojerl/compare/0.1.0...0.1.1)

**Implemented enhancements:**

- Don't run the service as root in the docker container [\#22](https://github.com/clojerl/try_clojerl/issues/22)

**Merged pull requests:**

- \[Close \#22\] Run as non-root user [\#23](https://github.com/clojerl/try_clojerl/pull/23) ([jfacorro](https://github.com/jfacorro))

## [0.1.0](https://github.com/clojerl/try_clojerl/tree/0.1.0) (2017-10-12)
**Implemented enhancements:**

- Update README.md [\#17](https://github.com/clojerl/try_clojerl/issues/17)

**Fixed bugs:**

- Use ns instead of in-ns when starting a new session [\#10](https://github.com/clojerl/try_clojerl/issues/10)
- \#terminal div goes off-screen when there are too many lines [\#9](https://github.com/clojerl/try_clojerl/issues/9)
- Gracefully handle the closing of the websocket  [\#7](https://github.com/clojerl/try_clojerl/issues/7)
- Show output to stdout [\#4](https://github.com/clojerl/try_clojerl/issues/4)

**Closed issues:**

- Improve general page layout [\#8](https://github.com/clojerl/try_clojerl/issues/8)

**Merged pull requests:**

- Implement terminal with jquery.console. [\#21](https://github.com/clojerl/try_clojerl/pull/21) ([jfacorro](https://github.com/jfacorro))
- \[\#8\] Add footer [\#20](https://github.com/clojerl/try_clojerl/pull/20) ([jfacorro](https://github.com/jfacorro))
- \[\#8\] Update layout [\#19](https://github.com/clojerl/try_clojerl/pull/19) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#17\] Add instructions for building and starting the web application [\#18](https://github.com/clojerl/try_clojerl/pull/18) ([jfacorro](https://github.com/jfacorro))
- \[\#8\] Add background image, increase font size and make the caret transparent instead of black when it's blinking [\#16](https://github.com/clojerl/try_clojerl/pull/16) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#9\] Limit the size of the terminal [\#14](https://github.com/clojerl/try_clojerl/pull/14) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#7\] Client handle websocket closing [\#13](https://github.com/clojerl/try_clojerl/pull/13) ([jfacorro](https://github.com/jfacorro))
- \[Closes \#4\] Provide output from stdout and stderr [\#12](https://github.com/clojerl/try_clojerl/pull/12) ([jfacorro](https://github.com/jfacorro))
- Dockerfile [\#3](https://github.com/clojerl/try_clojerl/pull/3) ([jfacorro](https://github.com/jfacorro))
- Send and receive JSON [\#2](https://github.com/clojerl/try_clojerl/pull/2) ([jfacorro](https://github.com/jfacorro))
- WebSocket client-server connection [\#1](https://github.com/clojerl/try_clojerl/pull/1) ([jfacorro](https://github.com/jfacorro))



\* *This Change Log was automatically generated by [github_changelog_generator](https://github.com/skywinder/Github-Changelog-Generator)*
