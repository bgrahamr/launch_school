# Alyssa was asked to write an implementation of a rolling buffer. Elements are added to 
# the rolling buffer and if the buffer becomes full, then new elements that are added 
# will displace the oldest elements in the buffer.

# She wrote two implementations saying, "Take your pick. Do you like << or + for modifying
# the buffer?". Is there a difference between the two, other than what operator she chose to
# use to add an element to the buffer?

# the first method will mutate the caller while the second will not. The buffer variable in the 
# first method will point to the array passed upon invoking the method. The append
# method then modifies the object. 

# in the second method, the buffer variable also points to the array passed as argument. However
# the buffer variable is then reassigned to a concatenated array (reassignment does not mutate
# the caller in Ruby).

def rolling_buffer1(buffer, max_buffer_size, new_element)
  buffer << new_element
  buffer.shift if buffer.size > max_buffer_size
  buffer
end

def rolling_buffer2(input_array, max_buffer_size, new_element)
  buffer = input_array + [new_element]
  buffer.shift if buffer.size > max_buffer_size
  buffer
end