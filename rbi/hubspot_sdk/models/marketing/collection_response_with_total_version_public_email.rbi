# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalVersionPublicEmail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponseWithTotalVersionPublicEmail,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of emails.
        sig { returns(T::Array[HubspotSDK::Marketing::VersionPublicEmail]) }
        attr_accessor :results

        # Total number of emails.
        sig { returns(Integer) }
        attr_accessor :total

        # Contains information pagination of results.
        sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
        attr_writer :paging

        # Response object for collections of marketing emails with pagination information.
        sig do
          params(
            results:
              T::Array[HubspotSDK::Marketing::VersionPublicEmail::OrHash],
            total: Integer,
            paging: HubspotSDK::Marketing::Paging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of emails.
          results:,
          # Total number of emails.
          total:,
          # Contains information pagination of results.
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Marketing::VersionPublicEmail],
              total: Integer,
              paging: HubspotSDK::Marketing::Paging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
