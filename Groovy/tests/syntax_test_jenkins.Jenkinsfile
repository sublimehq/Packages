// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"
// <- source.groovy

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
// <- meta.definition.method keyword.declaration.function
//^ meta.definition.method keyword.declaration.function
//  ^^^^ meta.definition.method entity.name.function
//      ^ meta.definition.method punctuation.definition.parameters.begin
//       ^ meta.definition.method punctuation.definition.parameters.end
//         ^ meta.block punctuation.section.block.begin
    sh '''#!/bin/bash
//  ^^ meta.block support.function
//     ^^^ meta.block meta.string.embedded-shell punctuation.definition.string.begin
//        ^ meta.block meta.string.embedded-shell string.quoted.single.block comment.line.number-sign.shell punctuation.definition.comment.shell
          echo "hello ${world}"
//        ^^^^ meta.block meta.string.embedded-shell string.quoted.single.block meta.function-call.identifier.shell support.function.shell
//                    ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
//                     ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
//                      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
//                           ^ meta.interpolation.parameter.shell punctuation.section.interpolation.end.shell
//                            ^ - meta.interpolation
    '''
}
// <- meta.block punctuation.section.block.end

@Library('somelib') _
// <- meta.declaration.annotation storage.type.annotation
//^^^^^^ meta.declaration.annotation storage.type.annotation

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
//           ^ meta.sequence punctuation.section.sequence.begin
    containerWorkDir: '/src',
//  ^^^^^^^^^^^^^^^^ constant.other.key
//                  ^ punctuation.definition.separator.key-value
//                    ^^^^^^ string.quoted.single
//                          ^ punctuation.separator.sequence
    DEFAULT_BRANCH: 'master',
//  ^^^^^^^^^^^^^^ constant.other.key
//                ^ punctuation.definition.separator.key-value
]
// <- meta.sequence punctuation.section.sequence.end
//^ - meta.sequence
// Deployment decision variables
Boolean isPullRequest = (env.CHANGE_ID != null)
// ^^^^ storage.type.class
//      ^^^^^^^^^^^^^ variable.other.readwrite
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
// TODO: highlight bash above

node('some-node-name') {
    try {
    // <- meta.block keyword.control.exception.try
    //  ^ punctuation.section.block.begin
        lock(lockName) {

        }
    } catch (InterruptedException e) {
    // <- punctuation.section.block.end
    //^^^^^ keyword.control.exception.catch
    //      ^ punctuation.section.group.begin
    //       ^^^^^^^^^^^^^^^^^^^^ storage.type.class
    //                            ^ variable.other.readwrite
    //                             ^ punctuation.section.group.end
    //                               ^ punctuation.section.block.begin
        if (isDeployment) {
        // <- meta.block meta.block keyword.control.conditional.if
        // ^ meta.block meta.block meta.group punctuation.section.group.begin
        //  ^^^^^^^^^^^^ meta.block meta.block meta.group variable.other.readwrite
        //              ^ meta.block meta.block meta.group punctuation.section.group.end
        //                ^ meta.block meta.block meta.block punctuation.section.block.begin
            notify.deployment(channel: config.jobStatusChannel, status: 'ABORTED', environment: params.CI_ENVIRONMENT)
        }
        throw e
        // <- meta.block meta.block keyword.control.flow.throw
        //    ^ meta.block meta.block variable.other.readwrite
    }
    // <- meta.block meta.block punctuation.section.block.end
}
