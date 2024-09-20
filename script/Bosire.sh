#!/usr/bin/env bash 

#A summary of the various bash commands used in the phase 1 Bash basics project
# Create a folder titled your name
mkdir Bosire
# Create another directory titled biocomputing and change into the folder with one line of command
mkdir biocomputing ; cd biocomputing

# Download the three files given
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.fna 
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk 
wget https://raw.githubusercontent.com/josoga2/dataset-repos/main/wildtype.gbk

# Moving the .fna file into a folder titled my name directly with one command
mv mv wildtype.fna ../Bosire/
# Deleting the .gbk file
rm wildtype.gbk
# Confirming if the file is a mutant or wildtype
cd ..
cd Bosire
grep -i "tata" wildtype.fna # Confirming if it's a normal wildtype file
grep -i "tatatata" wildtype.fna # Confriming if the file is a mutant

# If mutant print all the lines that show it is a mutant into a new line
grep -i “tatatata” wildtype.fna > mutant_sequence.txt # However the file was not a mutant just a showcasing if it had been a mutant

# Download the rbcL gene for Arabidopsis thaliana
wget "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=NM_007294.3&rettype=fasta&retmode=text" -O rbcL.fasta

# Checking the lines in the FASTA file with the exception of the header
grep -v “^>” gene.fna | wc -l

#Checking the number of times A occurs
# Remove the header lines and concatenate the sequence lines 
# Use the grep, tr, and wc commands
# Remove header lines and concatenate sequence lines
grep -v '^>' filename.fasta | tr -d '\n' | tr -d '\r' > all_sequences.txt

# counting the number of occurences of A :
grep -o “A” all_sequences.txt | wc -l # Occurrences = 404
# counting the number of occurences of G :
grep -o “G” all_sequences.txt | wc -l # Occurrences = 348
# Counting the occurences of C :
grep -o “C” all_sequences.txt | wc -l # Occurrences = 285
# counting the occurences of T :
grep -o “T” all_sequences.txt | wc -l # Occurrences = 403

# Calculating the GC content of the gene
awk '{ gsub(/[^ATGC]/, "", $0); G+=gsub(/G/, ""); C+=gsub(/C/, ""); total=length($0); } END { if (total > 0) { gc_content = (G + C) / total * 100; print "GC Content: " gc_content "%"; } else { print "No sequence data found"; } }' all_sequences.txt

# Creating a nucleotide.fasta file titled my name
echo ">Bosire\nATGCGTACGTAGCTAGCTAGCTAGCGT" > Bosire.fasta

# Assigning the nucleotides counts to the .fasta file created
echo A count : 404 G count : 348 C count : 285 T count : 403 >> Bosire.fasta 

# Upload the file to your team’s github repo in a folder called /output

# Link to the repo :
https://github.com/Itsbosire/HackBio_Bash_project/blob/main/output/Bosire.fasta

#Save all the codes you have used in this project in a file named yourname.sh Upload all the codes you have used to your team’s github repo in a folder called /script
cd /home/bosire/Desktop/HackBio_Bash_project/scripts
mv Bosire.fasta output/
git checkout main
git add output/
git commit -m "Inital chore"
git push --set-upstream origin main
git push origin main




#Save all the codes you have used in this project in a file named yourname.sh Upload all the codes you have used to your team’s github repo in a folder called /script
git add scripts/Bosire.sh
git commit -m "Add Bosire.sh to the scripts folder"
git branch
git checkout main
git push origin main








