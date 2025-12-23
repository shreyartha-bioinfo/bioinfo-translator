# A simple DNA to Protein Translator

def translate(dna):
    # Standard Genetic Code Dictionary
    codon_table = {
        'ATA':'I', 'ATC':'I', 'ATT':'I', 'ATG':'M',
        'ACA':'T', 'ACC':'T', 'ACG':'T', 'ACT':'T',
        'AAC':'N', 'AAT':'N', 'AAA':'K', 'AAG':'K',
        'AGC':'S', 'AGT':'S', 'AGA':'R', 'AGG':'R',
        'CTA':'L', 'CTC':'L', 'CTG':'L', 'CTT':'L',
        'TTA':'L', 'TTG':'L', 'TAC':'Y', 'TAT':'Y',
        'TGC':'C', 'TGT':'C', 'TGG':'W', 'CAT':'H',
        'CAC':'H', 'CAA':'Q', 'CAG':'Q', 'GAA':'E',
        'GAG':'E', 'GAT':'D', 'GAC':'D', 'GCA':'A',
        'GCC':'A', 'GCG':'A', 'GCT':'A', 'GGA':'G',
        'GGC':'G', 'GGG':'G', 'GGT':'G', 'TCA':'S',
        'TCC':'S', 'TCG':'S', 'TCT':'S', 'TTC':'F',
        'TTT':'F', 'TAA':'_', 'TAG':'_', 'TGA':'_'
    }
    protein = ""
    for i in range(0, len(dna), 3):
        codon = dna[i:i+3]
        if len(codon) == 3:
            protein += codon_table.get(codon, '?')
    return protein

# Dummy DNA Sequence
my_dna = "ATGGCCATTGTAATGGGCCGCTGAAAGGGTGCCCGATAG"
print(f"DNA Sequence: {my_dna}")
print(f"Protein Sequence: {translate(my_dna)}")
