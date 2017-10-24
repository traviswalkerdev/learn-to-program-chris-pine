def clock (&block)

  hours = Time.new.hour
  if hours == 0
    hours = 12
  elsif hours > 12
    hours = hours - 12
  end

  hours.times do
    yield
  end

end


dong  = Proc.new do
  puts "DONG!"
end


# Call with proc
clock &dong

# Call with block directly
clock { puts "Chime!" }
