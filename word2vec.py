from gensim.test.utils import common_texts, get_tmpfile
from gensim.models import Word2Vec, KeyedVectors

model =  KeyedVectors.load_word2vec_format('vectors.bin', binary= True)

vector = model.wv['computer']

print(vector)

kk= model.most_similar(['girl', 'father'], ['boy'], topn=3)

print(kk)
