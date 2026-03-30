# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class DealSplits
        class Batch
          # Read a batch of deal split objects by their associated deal object internal ID
          sig do
            params(
              inputs: T::Array[HubspotSDK::PublicObjectID::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseDealToDealSplits)
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
                  HubspotSDK::Crm::PublicDealSplitsCreateRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::BatchResponseDealToDealSplits)
          end
          def upsert(
            # An array of deal split inputs
            inputs:,
            request_options: {}
          )
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
