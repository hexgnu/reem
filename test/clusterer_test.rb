require 'helper'

describe Reem::Clusterer do
  it 'separates two obvious gaussians into two clusters' do
    skip
    mga = MultivariateGaussian.new(Vector[100,100,100], Matrix.identity(3) * 0.01)
    mba = MultivariateGaussian.new(Vector[-1,-1,-1], Matrix.identity(3) * 10)

    instances = instances.length.times.map do |i|
      if Distribution.random.next_boolean
        mga.sample(nil)
      else
        mgb.sample(nil)
      end
    end
    set = ::Reem::DataSet.new(instances)
    em = ::Reem::Clusterer.new
    puts em.estimate(set)
  end
end