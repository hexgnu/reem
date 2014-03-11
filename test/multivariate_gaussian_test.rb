require 'helper'

describe ::Reem::MultivariateGaussian do
  it 'blends' do
    skip
    mga = ::Reem::MultivariateGaussian.new(Vector[100,100,100], Matrix.identity(3) * 0.01)

    instances = 20.times.map do |i|
      mga.sample
    end

    set = DataSet.new(instances)
    mg = MultivariateGaussian
    mg.estimate(set)

    puts mg
    puts "Most likely #{mg.mode}"

    10.times do |i|
      puts mg.sample
    end

    instances.each do |instance|
      puts "Probability of \n #{instance} \n #{mg.p(instance)}"
    end
  end
end