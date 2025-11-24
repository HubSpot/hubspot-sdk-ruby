# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Associations
        class V4
          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Batch) }
          attr_reader :batch

          sig { returns(HubspotSDK::Resources::Crm::Associations::V4::Report) }
          attr_reader :report

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
