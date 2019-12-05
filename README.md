# tv-tropes-word2vec
TV Tropes and Word2vec paper

To obtain file tvtropes_less_than_10.json
./tvtropes.pl tvtropes.json

(with DEBUG = 0) To obtain set of tropes in films with less than 10 tropes
./tvtropes.pl tvtropes_less_than_10.json > tropes_set.txt

To obtain number of films with less than 10 tropes
wc -l tvtropes_less_than_10.txt

To obtain number of tropes in set of tropes from films with less than 10 tropes
wc -l tropes_set.txt
