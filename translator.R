# A simple DNA to Protein Translator in R

translate_dna <- function(dna) {
  # Standard Genetic Code (Named Vector)
  codon_table <- c(
    'ATA'='I', 'ATC'='I', 'ATT'='I', 'ATG'='M',
    'ACA'='T', 'ACC'='T', 'ACG'='T', 'ACT'='T',
    'AAC'='N', 'AAT'='N', 'AAA'='K', 'AAG':'K',
    'AGC'='S', 'AGT'='S', 'AGA'='R', 'AGG'='R',
    'CTA'='L', 'CTC'='L', 'CTG'='L', 'CTT'='L',
    'TTA'='L', 'TTG'='L', 'TAC'='Y', 'TAT'='Y',
    'TGC'='C', 'TGT'='C', 'TGG'='W', 'CAT'='H',
    'CAC'='H', 'CAA'='Q', 'CAG'='Q', 'GAA'='E',
    'GAG'='E', 'GAT'='D', 'GAC'='D', 'GCA'='A',
    'GCC'='A', 'GCG'='A', 'GCT'='A', 'GGA'='G',
    'GGC'='G', 'GGG'='G', 'GGT'='G', 'TCA'='S',
    'TCC'='S', 'TCG'='S', 'TCT'='S', 'TTC'='F',
    'TTT'='F', 'TAA'='_', 'TAG'='_', 'TGA'='_'
  )
  
  # Break string into 3-character chunks
  codons <- substring(dna, seq(1, nchar(dna)-2, 3), seq(3, nchar(dna), 3))
  
  # Map codons to amino acids
  protein_vec <- codon_table[codons]
  
  # Collapse vector into a single string
  protein_string <- paste(protein_vec, collapse = "")
  return(protein_string)
}

# Dummy DNA Sequence
my_dna <- "ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG"
print(paste("DNA Sequence:", my_dna))
print(paste("Protein Sequence:", translate_dna(my_dna)))
