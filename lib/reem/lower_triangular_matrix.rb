module Reem
  class LowerTriangularMatrix
    def initialize(matrix)
      columns, rows = matrix.sizes
      @ltm = NArray.float(columns, rows)

      (0...columns).each do |i|
        (0..i).each do |j|
          @ltm[j,i] = matrix[j,i]
        end
      end
    end

    def transpose
      @transpose ||= begin
        columns, rows = @ltm.sizes
        matrix = NArray.float(columns, rows)
        (0...columns).each do |i|
          (0...rows).each do |j|
            matrix[i,j] = @ltm[j,i]
          end
        end
        matrix
      end
    end
  end
end