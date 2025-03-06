# Check for input argument
if ARGV.length < 1
  puts "Usage: ruby extract_links.rb <input_html_file> [output_html_file]"
  exit 1
end

input_file = ARGV[0]
output_file = ARGV[1] || "sorted_links.html"

begin
  # Read the input file
  html_content = File.read(input_file)
  
  # Extract all anchor tags using regex
  anchors = []
  html_content.scan(/<a\s+[^>]*>.*?<\/a>/im).each do |tag|
    # Get the text content of the anchor
    text = tag[/>([^<]*)<\/a>/i, 1] || ""
    anchors << { text: text, tag: tag }
  end
  
  # Sort anchors alphabetically by their text content
  sorted_anchors = anchors.sort_by { |a| a[:text].downcase }
  
  # Create a new HTML document with the sorted anchors
  output_html = <<~HTML
    <!DOCTYPE html>
    <html>
    <head>
      <title>Sorted Links</title>
    </head>
    <body>
      <h1>Sorted Links from #{input_file}</h1>
      #{sorted_anchors.map { |a| "      #{a[:tag]}<br>" }.join("\n")}
    </body>
    </html>
  HTML
  
  # Save the new document
  File.write(output_file, output_html)
  
  puts "Successfully extracted #{sorted_anchors.length} links from #{input_file}"
  puts "Sorted links saved to #{output_file}"
  
rescue => e
  puts "Error: #{e.message}"
  exit 1
end