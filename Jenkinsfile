// Build master nightly between 2:00 and 3:59 am
String cron_string = BRANCH_NAME == "htc/master" ? "H H(2-3) * * *" : ""

pipeline {
  agent none
  triggers { cron(cron_string) }
  options {
    disableConcurrentBuilds()
  }
  stages {
    stage('Test-Linux') {
      agent {
        docker {
          image 'harbor.software.htc/toolchain/toolchain_build_linux:2.0'
          label 'llvm-project'
          args "-v /etc/passwd:/etc/passwd -e JENKINS_NUM_CORES=" + System.getenv("JENKINS_NUM_CORES") ?: "20"
          registryUrl 'https://harbor.software.htc'
          registryCredentialsId 'jenkins'
        }
      }

      steps {
        mattermostSend channel: "#llvm-dev", color: "good", message: "Build started using ${env.JENKINS_NUM_CORES} cores - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        sh '''
          echo "Using ${JENKINS_NUM_CORES} jobs"
          mkdir -p build;
          cd build;
          rm -f testresults.xunit.xml;
          cmake -G "Unix Makefiles"\
                -DCMAKE_BUILD_TYPE="Release"\
                -DLLVM_ENABLE_ASSERTIONS=ON\
                -DLLVM_ENABLE_TERMINFO=OFF\
                -DLLVM_ENABLE_PROJECTS="clang;lld"\
                -DCMAKE_C_COMPILER=/usr/bin/clang-5.0\
                -DCMAKE_CXX_COMPILER=/usr/bin/clang++-5.0\
                -DLLVM_ENABLE_LLD=ON\
                -DLLVM_TARGETS_TO_BUILD="X86;ARM;AArch64"\
                -DLLVM_EXPERIMENTAL_TARGETS_TO_BUILD="TriCore"\
                -DLLVM_INCLUDE_TESTS=ON\
                -DLLVM_LIT_ARGS="-j${JENKINS_NUM_CORES} --xunit-xml-output=testresults.xunit.xml -v"\
            ../llvm;
          make check-all -j${JENKINS_NUM_CORES};
          cd ..;
        '''
      }

      post {
        always {
          script {
            if (currentBuild.currentResult != 'ABORTED') {
              try {
                junit 'build/**/testresults.xunit.xml'
              } catch (Exception e) {
                currentBuild.currentResult = 'FAILURE'
              }
            }

            mattermostColor = "good"
            mattermostEmoji = ":sunny:"
            buildResult = "succeeded"

            if (currentBuild.currentResult == 'ABORTED') {
              mattermostColor = "warning"
              mattermostEmoji = ":warning:"
              buildResult = "aborted"
            } else if(currentBuild.currentResult == 'FAILURE') {
              mattermostColor = "danger"
              mattermostEmoji = ":no_entry_sign:"
              buildResult = "failed"
            } else if (currentBuild.currentResult == 'UNSTABLE') {
              mattermostColor = "warning"
              mattermostEmoji = ":warning:"
              buildResult = "unstable"
            }

            def testResultAction = currentBuild.rawBuild.getAction(hudson.tasks.test.AbstractTestResultAction.class)
            if (testResultAction != null) {
              def total = testResultAction.getTotalCount()
              def failed = testResultAction.getFailCount()
              def skipped = testResultAction.getSkipCount()

              summary = "\nTest results:\n\t"
              summary = summary + ("Passed: " + (total - failed - skipped))
              summary = summary + (", Failed: " + failed)
              summary = summary + (", Skipped: " + skipped)
            } else {
              summary = "\nNo tests found"
            }
          }

          mattermostSend channel: "#llvm-dev", color: mattermostColor, message: "${mattermostEmoji} ${env.JOB_NAME} - #${env.BUILD_NUMBER} ${buildResult} after ${currentBuild.durationString.replace(' and counting', '')} <${env.BUILD_URL}|Open>${summary}"
        }
      }
    }
  }
}