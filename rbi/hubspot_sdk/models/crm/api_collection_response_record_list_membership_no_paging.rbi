# typed: strong

module HubspotSDK
  module Models
    module CRM
      class APICollectionResponseRecordListMembershipNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::APICollectionResponseRecordListMembershipNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::RecordListMembership]) }
        attr_accessor :results

        sig { returns(T.nilable(Integer)) }
        attr_reader :total

        sig { params(total: Integer).void }
        attr_writer :total

        sig do
          params(
            results: T::Array[HubspotSDK::CRM::RecordListMembership::OrHash],
            total: Integer
          ).returns(T.attached_class)
        end
        def self.new(results:, total: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::CRM::RecordListMembership],
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
