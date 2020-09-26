

# This method uses a heap to sort an array.
# Time Complexity:  O(n log n)
# Space Complexity: O(1) / O(n) 1 because the heap is being sorted in place but I'm creating a new array to return the answer, which will be n elements long
def heap_sort(list)
  return [] if list.empty?

  heap = MinHeap.new
  list.each do |item|
    heap.add(item)
  end

  array = []
  heap_to_array(heap, array)

  return array
end

def heap_to_array(heap, array)
  return array if heap.empty?
  array << heap.remove
  heap_to_array(heap, array)
end