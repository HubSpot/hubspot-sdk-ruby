# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class CollectionResponseWithTotalPublicEmailForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::CollectionResponseWithTotalPublicEmailForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Collection of emails.
        sig { returns(T::Array[HubspotSDK::Marketing::PublicEmail]) }
        attr_accessor :results

        # Total number of content emails.
        sig { returns(Integer) }
        attr_accessor :total

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        # Response object for collections of marketing emails with pagination information.
        sig do
          params(
            results: T::Array[HubspotSDK::Marketing::PublicEmail::OrHash],
            total: Integer,
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Collection of emails.
          results:,
          # Total number of content emails.
          total:,
          paging: nil
        )
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Marketing::PublicEmail],
              total: Integer,
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
