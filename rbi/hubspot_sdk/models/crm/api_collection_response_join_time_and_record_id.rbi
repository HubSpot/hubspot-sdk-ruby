# typed: strong

module HubspotSDK
  module Models
    module Crm
      class APICollectionResponseJoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::APICollectionResponseJoinTimeAndRecordID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::JoinTimeAndRecordID]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Paging::OrHash).void }
        attr_writer :paging

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::JoinTimeAndRecordID::OrHash],
            paging: HubspotSDK::Paging::OrHash,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil, total: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Crm::JoinTimeAndRecordID],
              paging: HubspotSDK::Paging,
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
