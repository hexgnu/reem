require 'helper'

describe ::Reem::LowerTriangularMatrix do
  let(:matrix) { NArray[[1,2,3], [4,5,6], [7,8,9]] }
  let(:lower_triangle) { NArray[[1.0,0.0,0.0], [4.0,5.0,0.0], [7.0,8.0,9.0]] }
  let(:upper_triangle) { NArray[[1.0, 4.0, 7.0], [0.0, 5.0, 8.0], [0.0, 0.0, 9.0]]}

  it 'should convert to a lower triangular matrix' do
    ltm = ::Reem::LowerTriangularMatrix.new(matrix)
    ltm.instance_variable_get("@ltm").must_equal lower_triangle
  end

  it 'transposes' do
    ltm = ::Reem::LowerTriangularMatrix.new(matrix)
    ltm.transpose.must_equal upper_triangle
  end
end