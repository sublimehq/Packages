// SYNTAX TEST "Packages/Groovy/Groovy.sublime-syntax"
// <- comment.line.double-slash.groovy punctuation.definition.comment.groovy
// ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ comment.line.double-slash.groovy

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
// <- meta.definition.method.groovy keyword.declaration.function.groovy
//^ meta.definition.method.groovy keyword.declaration.function.groovy
//  ^^^^ meta.definition.method.groovy entity.name.function.groovy
//      ^ meta.definition.method.groovy punctuation.definition.parameters.begin.groovy
//       ^ meta.definition.method.groovy punctuation.definition.parameters.end.groovy
//         ^ meta.block.groovy punctuation.section.block.begin.groovy
    sh '''#!/bin/bash
//  ^^ meta.block.groovy support.function.groovy
//     ^^^ meta.block.groovy meta.string.embedded-shell.groovy punctuation.definition.string.begin.groovy
//        ^ meta.block.groovy meta.string.embedded-shell.groovy string.quoted.single.block.groovy source.shell.bash comment.line.number-sign.shell punctuation.definition.comment.shell
          echo "hello ${world}"
//        ^^^^ meta.block.groovy meta.string.embedded-shell.groovy string.quoted.single.block.groovy source.shell.bash meta.function-call.identifier.shell support.function.shell
//                    ^ meta.interpolation.parameter.shell punctuation.definition.variable.shell
//                     ^ meta.interpolation.parameter.shell punctuation.section.interpolation.begin.shell
//                      ^^^^^ meta.interpolation.parameter.shell variable.other.readwrite.shell
//                           ^ meta.interpolation.parameter.shell punctuation.section.interpolation.end.shell
//                            ^ - meta.interpolation
    '''
}
// <- meta.block.groovy punctuation.section.block.end.groovy

@Library('somelib') _
// <- meta.declaration.annotation.groovy storage.type.annotation.groovy
//^^^^^^ meta.declaration.annotation.groovy storage.type.annotation.groovy

properties([
    parameters([
        booleanParam(name: 'SOME_PARAM', defaultValue: false, description: 'Example parameter'),
        validatingString(name: 'COMMIT_HASH', defaultValue: '', regex: '^(?:[a-z0-9]{40})?$', failedValidationMessage: 'Commit must be valid if specified', description: 'Commit hash'),
    ]),
])

// Project config
Map config = [
// <- storage.type.class.groovy
//  ^^^^^^ variable.other.readwrite.groovy
//         ^ keyword.operator.assignment.groovy
//           ^ meta.structure.groovy punctuation.definition.structure.begin.groovy
    containerWorkDir: '/src',
//  ^^^^^^^^^^^^^^^^ constant.other.key.groovy
//                  ^ punctuation.definition.separator.key-value.groovy
//                    ^^^^^^ string.quoted.single.groovy
//                          ^ punctuation.definition.separator.groovy
    DEFAULT_BRANCH: 'master',
//  ^^^^^^^^^^^^^^ constant.other.key.groovy
//                ^ punctuation.definition.separator.key-value.groovy
]
// <- meta.structure.groovy punctuation.definition.structure.end.groovy
//^ - meta.structure
// Deployment decision variables
Boolean isPullRequest = (env.CHANGE_ID != null)
// ^^^^ storage.type.class.groovy
//      ^^^^^^^^^^^^^ variable.other.readwrite.groovy
//                    ^ keyword.operator.assignment.groovy
//                      ^^^^^^^^^^^^^^^^^^^^^^^ meta.group.groovy
//                      ^ punctuation.section.group.begin.groovy
//                                     ^^ keyword.operator.comparison.groovy
//                                        ^^^^ constant.language.null.groovy
//                                            ^ punctuation.section.group.end.groovy

// Environment section
env.SOME_ENV_VAR = "refs/heads/${config.DEFAULT_BRANCH.toLowerCase()}"

int something = sh(returnStdout: true, script: '''#!/bin/bash
    set -eu
    echo 7
    ''')
// TODO: highlight bash above

node('some-node-name') {
    try {
    // <- meta.block.groovy keyword.control.exception.try.groovy
    //  ^ punctuation.section.block.begin.groovy
        lock(lockName) {
            
        }
    } catch (InterruptedException e) {
    // <- punctuation.section.block.end.groovy
    //^^^^^ keyword.control.exception.catch.groovy
    //      ^ punctuation.section.group.begin.groovy
    //       ^^^^^^^^^^^^^^^^^^^^ storage.type.class.groovy
    //                            ^ variable.other.readwrite.groovy
    //                             ^ punctuation.section.group.end.groovy
    //                               ^ punctuation.section.block.begin.groovy
        if (isDeployment) {
        // <- meta.block.groovy meta.block.groovy keyword.control.conditional.if.groovy
        // ^ meta.block.groovy meta.block.groovy meta.group.groovy punctuation.section.group.begin.groovy
        //  ^^^^^^^^^^^^ meta.block.groovy meta.block.groovy meta.group.groovy variable.other.readwrite.groovy
        //              ^ meta.block.groovy meta.block.groovy meta.group.groovy punctuation.section.group.end.groovy
        //                ^ meta.block.groovy meta.block.groovy meta.block.groovy punctuation.section.block.begin.groovy
            notify.deployment(channel: config.jobStatusChannel, status: 'ABORTED', environment: params.CI_ENVIRONMENT)
        }
        throw e
        // <- meta.block.groovy meta.block.groovy keyword.control.flow.throw.groovy
        //    ^ meta.block.groovy meta.block.groovy variable.other.readwrite.groovy
    }
    // <- meta.block.groovy meta.block.groovy punctuation.section.block.end.groovy
}
