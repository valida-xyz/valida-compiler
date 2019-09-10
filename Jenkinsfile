pipeline {
  agent none
  stages {
    stage('Test-Linux') {
      agent {
        docker {
          image 'harbor.software.htc/toolchain/toolchain_build_linux:2.0'
          args '-v /etc/passwd:/etc/passwd'
          registryUrl 'https://harbor.software.htc'
          registryCredentialsId 'jenkins'
        }
      }

      steps {
        mattermostSend channel: "#llvm-dev", color: "good", message: "Build started - ${env.JOB_NAME} ${env.BUILD_NUMBER} (<${env.BUILD_URL}|Open>)"
        sh '''
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
                -DLLVM_LIT_ARGS="-j48 --xunit-xml-output=testresults.xunit.xml -v"\
            ../llvm;
          make check-all -j48;
          cd ..;
        '''
      }

      post {
        always {

          script {
            try {
              junit 'build/**/testresults.xunit.xml'
            } catch (Exception e) {
              curentBuild.result = 'FAILURE'
            }
          }

          script {
            mattermostColor = "good"
            mattermostEmoji = ":sunny:"

            if (currentBuild.result == null) {
              currentBuild.result = 'SUCCESS'
            } else if(currentBuild.result == 'FAILURE' || currentBuild.result == 'UNSTABLE') {
              if(currentBuild.result == 'FAILURE') {
                mattermostColor = "danger"
                mattermostEmoji = ":no_entry_sign:"
              } else {
                mattermostColor = "warning"
                mattermostEmoji = ":warning:"
              }
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
              summary = "No tests found"
            }
          }

          mattermostSend channel: "#llvm-dev", color: mattermostColor, message: "${mattermostEmoji} ${env.JOB_NAME} - #${env.BUILD_NUMBER} after ${currentBuild.durationString.replace(' and counting', '')} <${env.BUILD_URL}|Open>${summary}"
        }
      }
    }
  }
}
