fileID = fopen('keywords_spam.txt','r');
spam=textscan(fileID, '%s');
fclose(fileID);
fprintf('Toate cuvintele spam:');
fprintf(' %s',spam{1}{:});
fprintf('.\n');

fileID1 = fopen('keywords_ham.txt', 'r');
ham=textscan(fileID1, '%s');
fclose(fileID1);
fprintf('Toate cuvintele ham:');
fprintf(' %s',ham{1}{:});
fprintf('.\n');

fileID2 = fopen('email1.txt', 'r');
email1=textscan(fileID2, '%s');
fclose(fileID2);
fprintf('Toate cuvintele din primul email:');
fprintf(' %s',email1{1}{:});
fprintf('.\n');

fileID3 = fopen('email2.txt', 'r');
email2=textscan(fileID3, '%s');
fclose(fileID3);
fprintf('Toate cuvintele din al doilea email:');
fprintf(' %s',email2{1}{:});
fprintf('.\n');

words=unique([spam{1};ham{1}]);
fprintf('Cuvinte distincte: %s.\n',words{:});

fprintf('Numarul de cuvinte distincte: %d.\n',numel(words));
fprintf('Numar cuvinte spam: %d.\n', numel(spam{1}));
fprintf('Numar cuvinte ham: %d.\n', numel(ham{1}));

fprintf('Probabilitate cuvinte spam: ');
prob_spam=numel(spam{1})/(numel(spam{1})+numel(ham{1}))

fprintf('Probabilitate cuvinte ham: ');
prob_ham=numel(ham{1})/(numel(spam{1})+numel(ham{1}))

for(i=1:numel(words))
  if(ismember(words{i}, email1{1}))
    prob_spam *= sum(strcmp(words{i}, spam{1}))/numel(spam{1});
    prob_ham *= sum(strcmp(words{i}, ham{1}))/numel(ham{1});
  else
    prob_spam *= 1 - sum(strcmp(words{i}, spam{1}))/numel(spam{1});
    prob_ham *= 1 - sum(strcmp(words{i}, ham{1}))/numel(ham{1});
  end
end
fprintf('Probabilitate ca mesajul din email1 este spam: %d vs probabilitate ca este legitim: %d\n', prob_spam, prob_ham)
if(prob_spam > prob_ham)
  fprintf('Mesajul din email este spam!\n')
else
  fprintf('Mesajul din email1 nu este spam!\n')
end

prob_spam = numel(spam{1})/(numel(spam{1})+numel(ham{1}));
prob_ham=numel(ham{1})/(numel(spam{1})+numel(ham{1}));
for(i=1:numel(words))
  if(ismember(words{i}, email2{1}))
    prob_spam *= sum(strcmp(words{i}, spam{1}))/numel(spam{1});
    prob_ham *= sum(strcmp(words{i}, ham{1}))/numel(ham{1});
  else
    prob_spam *= 1 - sum(strcmp(words{i}, spam{1}))/numel(spam{1});
    prob_ham *= 1 - sum(strcmp(words{i}, ham{1}))/numel(ham{1});
    end
end
fprintf('Probabilitate ca mesajul din email2 este spam: %d vs probabilitate ca este legitim: %d\n', prob_spam, prob_ham)
if(prob_spam > prob_ham)
  fprintf('Mesajul din email2 este spam!\n')
else
  fprintf('Mesajul din email2 nu este spam!\n')
end
