# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Timeline
        class Batch
          sig do
            params(
              inputs: T::Array[HubspotSDK::Crm::AppEventOccurrence::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseAppEventOccurrence)
          end
          def create(inputs:, request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
