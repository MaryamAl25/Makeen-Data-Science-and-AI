infile = open("text.txt", "r")
text = infile.read()
infile.close()

# Convert to lowercase
text = text.lower()

# Remove punctuation manually (common characters)
punctuation = ".,!?;:\"'()-"
for p in punctuation:
    text = text.replace(p, "")

# Split into words
words = text.split()

# Count words using a basic dictionary
wordcount = {}
word_order = []

for word in words:
    if word not in wordcount:
        wordcount[word] = 1
        word_order.append(word)  # Track first appearance order
    else:
        wordcount[word] += 1

# Print in order of first appearance
for word in word_order:
    print(f"{word}: {wordcount[word]}")

