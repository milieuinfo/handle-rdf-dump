#!/bin/bash
## sparql vind je hier https://dlcdn.apache.org/jena/binaries/apache-jena-5.1.0.tar.gz
  pushd ../result
  curl -LO 'https://datasets.omgeving.vlaanderen.be/be.vl.omg.dsi.distribution.dataset.dsi.publiek.ttl'
  sparql --results=TTL --data='be.vl.omg.dsi.distribution.dataset.dsi.publiek.ttl'  --query '../sparql/model.rq' | sed -e 's/.*rdfs:label.*;//'  > model.ttl
  rdf2dot  model.ttl | dot -Tpng > model.png
  popd

