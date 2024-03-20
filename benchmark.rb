require 'benchmark'

hash = {'111' => 'value', 111 => 'value', :'111' => 'value'}

Benchmark.bm do |x|
  x.report('string') { 1000000.times { hash['111'] } }
  x.report('symbol') { 1000000.times { hash[:'111'] } }
  x.report('integer') { 1000000.times { hash[111] } }
end