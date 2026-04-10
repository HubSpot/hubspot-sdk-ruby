# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class DealSplits
        class Batch
          # Read a batch of deal split objects by their associated deal object internal ID
          sig do
            params(
              inputs: T::Array[HubSpotSDK::PublicObjectID::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponseDealToDealSplits)
          end
          def read(
            # An array of deal split inputs
            inputs:,
            request_options: {}
          )
          end

          # Create or replace deal splits for deals with the provided IDs. Deal split
          # percentages for each deal must sum up to 1.0 (100%) and may have up to 8 decimal
          # places
          sig do
            params(
              inputs:
                T::Array[
                  HubSpotSDK::Crm::PublicDealSplitsCreateRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::BatchResponseDealToDealSplits)
          end
          def upsert(
            # An array of deal split inputs
            inputs:,
            request_options: {}
          )
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
