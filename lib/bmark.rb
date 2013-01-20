require 'benchmark'

# open Integer class adding the methods
class Integer
  def one_bits
    self.to_s(2).chars.inject(0) {|sum, c| c == "1" ? sum + 1 : sum}
  end

  def three_bits
    sum = 0
    self.to_s(2).each_char {|c| sum += 1 if c == "1" }
    sum
  end

  def count_bits
    self.to_s(2).count("1")
  end

  def count_arr
    self.to_s(2).chars.count("1")
  end

  def del_size
    self.to_s(2).delete('0').size
  end

  def mod_div
    n = 0; a = self
    while a > 0 do
      n += 1 if a % 2 == 1
      a = a/2
    end
  end
  
  def mod_mult
    n = 0; a = self
    while a >= 1 do
      n += 1 if a % 2 == 1
      a = a * 0.5
    end
  end

  def bin_bits
    i = self; ret = 0
    while i > 0
      ret += i & 1
      i = i >> 1
    end
    ret
  end

  
end

# benchmark run n times fo int1 and int2
n = 100000; int1 = 10000; int2 = 10000000

puts [ "-"*30,"Ruby:", RUBY_VERSION, " Run ",n," times for integers ",int1, " and ", int2, "-"*30].join
Benchmark.bmbm(5) do |x|
  x.report("one for #{int1}") {n.times {int1.one_bits}}
  x.report("three for #{int1}") {n.times {int1.three_bits}}
  x.report("count for #{int1}") {n.times {int1.count_bits}}
  x.report("count-arr for #{int1}") {n.times {int1.count_arr}}
  x.report("del_size for #{int1}") {n.times {int1.del_size}}
  x.report("mod_div for #{int1}") {n.times {int1.mod_div}}
  x.report("mod_mult for #{int1}") {n.times {int1.mod_mult}}
  x.report("bin for #{int1}") {n.times {int1.bin_bits}}

  x.report("one for #{int2}") {n.times {int2.one_bits}}
  x.report("three for #{int2}") {n.times {int2.three_bits}}
  x.report("count for #{int2}") {n.times {int2.count_bits}}
  x.report("count-arr for #{int2}") {n.times {int2.count_arr}}
  x.report("del_size for #{int2}") {n.times {int2.del_size}}
  x.report("mod_div for #{int2}") {n.times {int2.mod_div}}
  x.report("mod_mult for #{int2}") {n.times {int2.mod_mult}}
  x.report("bin for #{int2}") {n.times {int2.bin_bits}}
end

#user                      system      total        real
#one for 10000            0.550000   0.000000   0.550000 (  0.551101)
#three for 10000          0.440000   0.000000   0.440000 (  0.446126)
#count for 10000          0.070000   0.000000   0.070000 (  0.066558)
#count-arr for 10000      0.370000   0.000000   0.370000 (  0.368766)
#del_size for 10000       0.150000   0.000000   0.150000 (  0.148929)
#mod_div for 10000        0.120000   0.000000   0.120000 (  0.122377)
#mod_mult for 10000       0.350000   0.000000   0.350000 (  0.346107)
#bin for 10000            0.170000   0.000000   0.170000 (  0.167473)

#one for 10000000         0.900000   0.000000   0.900000 (  0.907838)
#three for 10000000       0.770000   0.000000   0.770000 (  0.774772)
#count for 10000000       0.100000   0.000000   0.100000 (  0.104776)
#count-arr for 10000000   0.560000   0.000000   0.560000 (  0.566864)
#del_size for 10000000    0.220000   0.000000   0.220000 (  0.217357)
#mod_div for 10000000     0.190000   0.000000   0.190000 (  0.191047)
#mod_mult for 10000000    0.590000   0.000000   0.590000 (  0.591380)
#bin for 10000000         0.280000   0.000000   0.280000 (  0.278790)
#
