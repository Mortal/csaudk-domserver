#!/bin/sh
# https://github.com/DOMjudge/domjudge/issues/243
# Apply the patch if delete.php does not contain START.
cd /opt/domjudge/domserver && \
	(grep -q START www/jury/delete.php || \
	patch -p1 < patches/Special_case_deleting_problems_f7a63e673a3d.patch)
