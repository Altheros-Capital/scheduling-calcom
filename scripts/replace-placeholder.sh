#!/bin/bash
set -e

FROM=$1
TO=$2

if [ "${FROM}" = "${TO}" ]; then
    echo "Nothing to replace, the value is already set to ${TO}."
    exit 0
fi

# Only perform action if $FROM and $TO are different.
echo "Replacing all statically built instances of $FROM with $TO."

for file in $(egrep -r -l "${FROM}" apps/web/.next/ apps/web/public/ 2>/dev/null || true); do
    if [ -f "$file" ]; then
        sed -i -e "s|$FROM|$TO|g" "$file"
    fi
done
