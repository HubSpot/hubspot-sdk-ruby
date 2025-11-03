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

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::EmailsPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::EmailsPaging::OrHash).void }
        attr_writer :paging

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::JoinTimeAndRecordID::OrHash],
            paging: HubspotSDK::Marketing::EmailsPaging::OrHash,
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          results:,
          # Contains information pagination of results.
          paging: nil,
          total: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Crm::JoinTimeAndRecordID],
              paging: HubspotSDK::Marketing::EmailsPaging,
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
