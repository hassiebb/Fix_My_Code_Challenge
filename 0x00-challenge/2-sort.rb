###
#
#  Sort integer arguments (ascending)
#
###

result = []
ARGV.each do |arg|
    # skip if not integer
    next if arg !~ /^-?[0-9]+$/

    # convert to integer
    i_arg = arg.to_i

    # insert result at the right position
    i = 0
    l = result.size
    while i < l do
        if result[i] < i_arg
            i += 1
        else
            result.insert(i, i_arg)
            break
        end
    end
    result << i_arg if i == l
end

puts result
