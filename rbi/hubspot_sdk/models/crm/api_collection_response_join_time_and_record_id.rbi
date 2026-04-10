# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class APICollectionResponseJoinTimeAndRecordID < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::APICollectionResponseJoinTimeAndRecordID,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::JoinTimeAndRecordID]) }
        attr_accessor :results

        sig { returns(T.nilable(HubSpotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubSpotSDK::Paging::OrHash).void }
        attr_writer :paging

        # The total number of records that match the query.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            results: T::Array[HubSpotSDK::Crm::JoinTimeAndRecordID::OrHash],
            paging: HubSpotSDK::Paging::OrHash,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          paging: nil,
          # The total number of records that match the query.
          total: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubSpotSDK::Crm::JoinTimeAndRecordID],
              paging: HubSpotSDK::Paging,
              total: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
