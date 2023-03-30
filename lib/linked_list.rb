require_relative './node'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def nth_from_end(n)
    if self.head.nil?
      return nil
    end
    current_node = @head
    target = @head
    length = 1
    while current_node.next_node
      current_node = current_node.next_node
      length += 1
    end
    if length - n < 0 || n < 1
      return nil
    else
      target_idx = length - n 
      target_idx.times do
        target = target.next_node
      end
    target.value
    end
  end

end
