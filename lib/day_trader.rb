
def day_trader(array)
  array_result=[0,0]
  array_size = array.size
  gain=-100
  for index_achat in (0...array_size) do
    for index_rev in ((index_achat+1)...array_size) do
      if gain< (array[index_rev]-array[index_achat])
        index_achat_max=index_achat
        index_rev_max =index_rev
        gain = array[index_rev]-array[index_achat]
      end
    end
  end
  array_result[0]=array[index_achat_max]
  array_result[1]=array[index_rev_max]
  return array_result
end
print day_trader([17, 3, 6, 9, 15, 8, 6, 1, 10])
