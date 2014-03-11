module Reem
  class CholeskyFactorization
    def initialize(matrix)
      @matrix = matrix
      @lower = LowerTriangularMatrix.new(matrix)
      decompose!
    end

    def decompose!
      @lower.n.times do |j|
        # Sqrt the diagonal
        @lower[j,j] = Math::sqrt(@lower[j,j])
        # Divide the subdiagonal colum by the diagonal

        (j + 1...@lower.m).each do |i|
          @lower[i,j] = @lower[i,j] / @lower[j,j]
        end

        # symmetric rank 1 update
        # subtract the crossproduct of the
        # subdiagonal column from the remaining
        # lower diagonal
        (j+1...@lower.n).each do |k|
          (k...@lower.m).each do |l|
            @lower[l,k] = @lower[l, k] - @lower[l,k] * @lower[k,j]
          end
        end
      end

      @upper = @lower.transpose
    end
  end
end