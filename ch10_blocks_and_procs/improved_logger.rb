$nest_depth = 0

def log description, &block
  nesting = " " * $nest_depth
  puts nesting + "Beginning '#{description}'..."
  $nest_depth += 2

  result = block[]
  $nest_depth -= 2
  puts nesting + "...'#{description}' finished, returning: #{result}"
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
