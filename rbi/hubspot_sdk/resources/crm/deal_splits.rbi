# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class DealSplits
        sig { returns(HubspotSDK::Resources::Crm::DealSplits::Batch) }
        attr_reader :batch

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
