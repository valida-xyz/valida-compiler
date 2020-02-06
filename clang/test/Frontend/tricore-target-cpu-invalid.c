// RUN: not %clang_cc1 -triple tricore -target-cpu foo %s -o - 2>&1 | FileCheck %s --check-prefix=ERROR
// ERROR:      unknown target CPU 'foo'
// ERROR-NEXT: valid target CPU values are: tc2xx, tc3xx, tc4xx
