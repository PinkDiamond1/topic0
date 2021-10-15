#!/bin/bash
set -e

SOURCIFY_IPNS_ROOT="k51qzi5uqu5dll0ocge71eudqnrgnogmbr37gsgl12uubsinphjoknl6bbi41p"

echo "Removing previous snapshot..."
rm -fr sourcify-snapshot && mkdir -p sourcify-snapshot

echo "Getting Sourcify repo from ipfs..."
ipfs get "/ipns/$SOURCIFY_IPNS_ROOT" -o sourcify-snapshot.tar -a
tar xf sourcify-snapshot.tar -C sourcify-snapshot
mv "sourcify-snapshot/$SOURCIFY_IPNS_ROOT" sourcify-snapshot/repo
