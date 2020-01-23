require_relative './../min_heap.rb'

RSpec.describe MinHeap do
  context "children" do
    let(:heap) { MinHeap.new([1]) }
    describe "when looking for children of root" do
      it "will return the correct left child index" do
        expect(heap.left_child(0)).to eq(1)
      end

      it "will return the correct right child index" do
        expect(heap.right_child(0)).to eq(2)
      end
    end

    describe "when looking for children of non-root" do
      it "will return the correct left child index" do
        expect(heap.left_child(1)).to eq(3)
      end

      it "will return the correct right child index" do
        expect(heap.right_child(1)).to eq(4)
      end
    end
  end
end
