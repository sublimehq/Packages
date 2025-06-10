// SYNTAX TEST "Packages/Java/Groovy.sublime-syntax" \
// <- source.groovy

// this is a comment
// <- comment.line.double-slash punctuation.definition.comment
// ^^^^^^^^^^^^^^^^^^ comment.line.double-slash

pipeline {
    agent {
        docker { image 'node:20.17.0-alpine3.20' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
            }
        }
    }
}

def call() {
// <- meta.function.return-type support.class
//^ meta.function.return-type support.class
//  ^^^^ meta.function.identifier entity.name.function
//      ^ meta.function.parameters meta.group punctuation.section.group.begin
//       ^ meta.function.parameters meta.group punctuation.section.group.end
//         ^ meta.block punctuation.section.block.begin

    sh """#!/bin/bash
//  ^^ meta.block support.function
//     ^^^ meta.string string.quoted.double.block punctuation.definition.string.begin meta.shell
//        ^ meta.shell source.shell.bash.embedded comment.line.number-sign.shell punctuation.definition.comment.shell
          echo "hello ${world}"
//        ^^^^ meta.shell source.shell.bash.embedded meta.function-call.identifier.shell support.function.shell
//                    ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
//                     ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
//                      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
//                           ^ meta.interpolation.parameter.shell punctuation.section.interpolation.end.shell
//                            ^ - meta.interpolation
    """
//  ^^^ meta.string string.quoted.double.block punctuation.definition.string.end meta.shell

    sh '''#!/bin/bash
//  ^^ meta.block support.function
//     ^^^ meta.string string.quoted.single.block punctuation.definition.string.begin meta.shell
//        ^ meta.shell source.shell.bash.embedded comment.line.number-sign.shell punctuation.definition.comment.shell
          echo "hello ${world}"
//        ^^^^ meta.shell source.shell.bash.embedded meta.function-call.identifier.shell support.function.shell
//                    ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
//                     ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
//                      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
//                           ^ meta.interpolation.parameter.shell punctuation.section.interpolation.end.shell
//                            ^ - meta.interpolation
    '''
//  ^^^ meta.string string.quoted.single.block punctuation.definition.string.end meta.shell

    sh '#!/bin/bash
//  ^^ meta.block support.function
//     ^ meta.string string.quoted.single punctuation.definition.string.begin meta.shell
//      ^ meta.shell source.shell.bash.embedded comment.line.number-sign.shell punctuation.definition.comment.shell
          echo "hello ${world}"
//        ^^^^ meta.shell source.shell.bash.embedded meta.function-call.identifier.shell support.function.shell
//                    ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
//                     ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
//                      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
//                           ^ meta.interpolation.parameter.shell punctuation.section.interpolation.end.shell
//                            ^ - meta.interpolation
    '
//  ^ meta.string string.quoted.single punctuation.definition.string.end meta.shell
}
// <- meta.block punctuation.section.block.end

@Library('somelib') _
// <- meta.declaration.type meta.annotation punctuation.definition.annotation
//^^^^^^ meta.declaration.type meta.annotation variable.annotation

properties([
    parameters([
        booleanParam(name: 'SOME_PARAM', defaultValue: false, description: 'Example parameter'),
        validatingString(name: 'COMMIT_HASH', defaultValue: '', regex: '^(?:[a-z0-9]{40})?$', failedValidationMessage: 'Commit must be valid if specified', description: 'Commit hash'),
    ]),
])

// Project config
Map config = [
// <- storage.type.class
//  ^^^^^^ variable.other.readwrite
//         ^ keyword.operator.assignment
//           ^ meta.brackets punctuation.section.brackets.begin
    containerWorkDir: '/src',
//  ^^^^^^^^^^^^^^^^ meta.variable.identifier variable.other
//                  ^ punctuation.definition.separator.key-value
//                    ^^^^^^ meta.string string.quoted.single
//                          ^ punctuation.separator.comma
    DEFAULT_BRANCH: 'master',
//  ^^^^^^^^^^^^^^ constant.other.java
//                ^ punctuation.definition.separator.key-value
]
// <- meta.brackets punctuation.section.brackets.end
//^ - meta.structure
// Deployment decision variables
Boolean isPullRequest = (env.CHANGE_ID != null)
// ^^^^ storage.type.primitive
//      ^^^^^^^^^^^^^ variable.other
//                    ^ keyword.operator.assignment
//                      ^^^^^^^^^^^^^^^^^^^^^^^ meta.group
//                      ^ punctuation.section.group.begin
//                                     ^^ keyword.operator.comparison
//                                        ^^^^ constant.language.null
//                                            ^ punctuation.section.group.end

// Environment section
env.SOME_ENV_VAR = "refs/heads/${config.DEFAULT_BRANCH.toLowerCase()}"

int something = sh(returnStdout: true, script: '''#!/bin/bash
    set -eu
    echo 7
    ''')

node('some-node-name') {
    try {
    // <- meta.block keyword.control.exception.try
    //  ^ punctuation.section.braces.begin
        lock(lockName) {

        }
    } catch (InterruptedException e) {
    // <- punctuation.section.braces.end
    //^^^^^ keyword.control.exception.catch
    //      ^ punctuation.section.group.begin
    //       ^^^^^^^^^^^^^^^^^^^^ storage.type.class
    //                            ^ variable.other.readwrite
    //                             ^ punctuation.section.group.end
    //                               ^ punctuation.section.block.begin
        if (isDeployment) {
        // <- meta.braces meta.braces keyword.control.conditional.if
        // ^ meta.braces meta.braces meta.group punctuation.section.group.begin
        //  ^^^^^^^^^^^^ meta.braces meta.braces meta.group variable.other.readwrite
        //              ^ meta.braces meta.braces meta.group punctuation.section.group.end
        //                ^ meta.braces meta.braces meta.braces punctuation.section.braces.begin
            notify.deployment(channel: config.jobStatusChannel, status: 'ABORTED', environment: params.CI_ENVIRONMENT)
        }
        throw e
        // <- meta.block meta.block keyword.control.flow.throw
        //    ^ meta.block meta.block variable.other.readwrite
    }
    // <- meta.braces meta.braces punctuation.section.braces.end
}
