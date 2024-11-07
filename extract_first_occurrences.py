def extract_first_occurrences(input_file_path, output_file_path):
    unique_items = set()
    first_occurrences = []

    with open(input_file_path, 'r') as file:
        for line in file:
            item = line.strip()
            if item not in unique_items:
                unique_items.add(item)
                first_occurrences.append(item)

    with open(output_file_path, 'w') as output_file:
        for item in first_occurrences:
            output_file.write(item + '\n')

# Specify the paths to your input and output files
input_file_path = 'm18_audio_files_duplicates.txt'
output_file_path = 'm18_audio_files_noduplicates.txt'

extract_first_occurrences(input_file_path, output_file_path)
print(f"Output saved to {output_file_path}")
