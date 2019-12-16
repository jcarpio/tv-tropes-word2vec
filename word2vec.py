from gensim.test.utils import common_texts, get_tmpfile
from gensim.models import Word2Vec, KeyedVectors

# examples: https://rare-technologies.com/word2vec-tutorial/

model =  KeyedVectors.load_word2vec_format('vectors.bin', binary= True)

vector = model.wv['computer']

print(vector)

output = model.most_similar(['girl', 'father'], ['boy'], topn=3)

print(output)

output = model.most_similar(positive=['woman', 'king'], negative=['man'], topn=1)

print(output)

output = model.doesnt_match(['breakfast', 'cereal', 'dinner', 'lunch'])

print(output)

output = model.similarity('woman', 'man')

print(output)
