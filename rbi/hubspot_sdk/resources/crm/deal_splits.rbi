# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class DealSplits
        sig { returns(HubSpotSDK::Resources::Crm::DealSplits::Batch) }
        attr_reader :batch

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
