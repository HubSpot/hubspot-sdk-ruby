# typed: strong

module HubspotSDK
  module Models
    module CRM
      class APICollectionResponseJoinTimeAndRecordID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::APICollectionResponseJoinTimeAndRecordID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::JoinTimeAndRecordID]) }
        attr_accessor :results

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            results: T::Array[HubspotSDK::CRM::JoinTimeAndRecordID::OrHash],
            paging: HubspotSDK::Marketing::Paging::OrHash,
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
              results: T::Array[HubspotSDK::CRM::JoinTimeAndRecordID],
              paging: HubspotSDK::Marketing::Paging,
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
