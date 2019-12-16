from gensim.test.utils import common_texts, get_tmpfile
from gensim.models import Word2Vec, KeyedVectors

# examples: https://rare-technologies.com/word2vec-tutorial/

model =  KeyedVectors.load_word2vec_format('ngrams_15_taken_9_vectors_add_film_name1.bin', binary= True)

vector = model.wv['AStarIsBorn1976'] # film

print(vector)

# output = model.most_similar(['girl', 'father'], ['boy'], topn=3)
output = model.most_similar(['AStarIsBorn1976', 'OldSchoolDogfight'], ['DreamLover'], topn=3)  # film trope film

print(output)

# output = model.most_similar(positive=['woman', 'king'], negative=['man'], topn=1)

output = model.most_similar(positive=['SourceMusic', 'LifeInAFishbowl'], negative=['CharacterDevelopment'], topn=1) #tope film trope

print(output)

# output = model.doesnt_match(['breakfast', 'cereal', 'dinner', 'lunch'])

output = model.doesnt_match(['Dinoshark', 'BeyondTheLineOfDuty', 'ReignOverMe', 'Fingore']) # last it's a trope

print(output)

# output = model.similarity('woman', 'man')

output = model.similarity('ReignOverMe', 'MidwayToHeaven')  # two films

print(output)
