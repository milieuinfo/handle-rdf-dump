#!/bin/bash
  pushd ../result
  curl -LO 'https://datasets.omgeving.vlaanderen.be/be.vl.omg.dsi.distribution.dataset.dsi.publiek.ttl'
  sparql --results=TTL --data='be.vl.omg.dsi.distribution.dataset.dsi.publiek.ttl'  --query '../sparql/model.rq'  > model.ttl
  rdf2dot  model.ttl | dot -Tpng > model.png
  popd
  #rdf2dot  ../result/model.ttl  > ../result/model.dot
