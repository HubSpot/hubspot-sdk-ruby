# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Objects
        class DealSplits
          # Read a batch of deal split objects by their associated deal object internal ID
          sig do
            params(
              inputs: T::Array[HubspotSDK::PublicObjectID::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Objects::BatchResponseDealToDealSplits)
          end
          def batch_read(inputs:, request_options: {})
          end

          # Create or replace deal splits for deals with the provided IDs. Deal split
          # percentages for each deal must sum up to 1.0 (100%) and may have up to 8 decimal
          # places
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Crm::Objects::PublicDealSplitsCreateRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Objects::BatchResponseDealToDealSplits)
          end
          def batch_upsert(inputs:, request_options: {})
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
