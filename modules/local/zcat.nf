process zcatFiles {
    // Input the channel of .vcf.gz files
    input:
    path gz_files

    // Declare output as the final concatenated .txt file
    output:
    path "ammar.txt"

    // Script to decompress each .vcf.gz file and concatenate
    script:
    """
    zcat ${gz_files.join(' ')} > ammar.txt
    """
}
