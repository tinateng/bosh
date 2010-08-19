module Bosh::Director::Models

  class Stemcell < Ohm::Model
    attribute :name
    attribute :version
    attribute :cid

    index :name
    index :version

    def validate
      assert_present :name
      assert_present :version
      assert_present :cid

      assert_unique [:name, :version]
    end
  end
end
