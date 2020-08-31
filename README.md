# Sourcebin

CLI tool that uploads text to sourceb.in . (Basically a Gem version of [sourcebin](https://www.npmjs.com/package/sourcebin))

## Installation

To install this package using GEM, run:
`gem install sourcebin`

## Usage

### Write via the Shell
coming soon!

### Via the Ruby API

```ruby
require 'sourcebin'

# Write and Send
#                    optional
puts Sourcebin.write("file.rb","puts('Written with Sourcebin CLI Ruby')") # return key

# Send Files
puts Sourcebin.sendFile("./file.rb") # return key

# Read Files via hasteb.in
#                        key
puts Sourcebin.readRaw('aab313d603') # return raw

# Run Ruby File via sourceb.in
#                key
Sourcebin.run('aab313d603')

# Download File via hasteb.in
Sourcebin.download('aab313d603')


puts Sourcebin.base_url # https://sourceb.in/

puts Sourcebin.domain # sourceb.in

puts Sourcebin.ping # 450

```

## License

This module is licensed under the MIT license.
