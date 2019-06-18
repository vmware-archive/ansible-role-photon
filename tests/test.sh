#!/bin/bash
# Copyright © 2017 VMware, Inc. All Rights Reserved.
# SPDX-License-Identifier: MIT OR GPL-3.0-only

set -e

for test in tests/*playbook.yml ; do
    echo $test
    MOLECULE_PLAYBOOK=$test molecule test
done



