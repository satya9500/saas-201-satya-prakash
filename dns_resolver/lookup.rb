def get_command_line_argument
  # ARGV is an array that Ruby defines for us,
  # which contains all the arguments we passed to it
  # when invoking the script from the command line.
  # https://docs.ruby-lang.org/en/2.4.0/ARGF.html
  if ARGV.empty?
    puts "Usage: ruby lookup.rb <domain>"
    exit
  end
  ARGV.first
end

# `domain` contains the domain name we have to look up.
domain = get_command_line_argument

# File.readlines reads a file and returns an
# array of string, where each element is a line
# https://www.rubydoc.info/stdlib/core/IO:readlines
dns_raw = File.readlines("zone")

def parse_dns(dns_raw)
  dns_record_hash = {}
  #remove comments and empty lines and create hash of format -
  # {:"ruby-lang.org"=>{:type=>"A", :points_to=>"221.186.184.75"}}
  dns_raw.
    map { |line| line.strip }.
    reject { |line| line[0] == "#" }.
    map { |line| line.strip.split(", ") }.
    reject { |record| record.length < 3 }.
    each { |data| dns_record_hash[data[1].to_sym] = { :type => data[0], :points_to => data[2] } }
  dns_record_hash
end

def resolve(dns_records, lookup_chain, domain)
  if !dns_records[domain.to_sym]
    puts "Error: record not found for #{domain}"
    return
  end

  # Check to not push the given domain name twice
  if lookup_chain[0] != domain
    lookup_chain.push(domain)
  end

  if dns_records[domain.to_sym][:type] == "A"
    return lookup_chain.push(dns_records[domain.to_sym][:points_to])
  elsif dns_records[domain.to_sym][:type] == "CNAME"
    resolve(dns_records, lookup_chain, dns_records[domain.to_sym][:points_to])
  end
end

# To complete the assignment, implement `parse_dns` and `resolve`.
# Remember to implement them above this line since in Ruby
# you can invoke a function only after it is defined.
dns_records = parse_dns(dns_raw)
lookup_chain = [domain]
lookup_chain = resolve(dns_records, lookup_chain, domain)
if lookup_chain != nil
  puts lookup_chain.join(" => ")
end
