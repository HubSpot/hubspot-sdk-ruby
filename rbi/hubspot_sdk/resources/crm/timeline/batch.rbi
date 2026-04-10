# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Timeline
        class Batch
          sig do
            params(
              inputs: T::Array[HubSpotSDK::Crm::AppEventOccurrence::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponseAppEventOccurrence)
          end
          def create(inputs:, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
