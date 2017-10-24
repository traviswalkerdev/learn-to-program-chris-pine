def log description, &block
  puts "Beginning '#{description}'..."

  result = block[]
  puts "...'#{description}' finished, returning: #{result}"
end

log "outermost block" do
  log "first inner block" do
    log "inside of inner block" do
      "QUIET".downcase
    end
    7 * 3 * 2
  end
  log "second inner block" do
    "ssenisub yeknom".reverse.capitalize
  end

0 == "0"
end
