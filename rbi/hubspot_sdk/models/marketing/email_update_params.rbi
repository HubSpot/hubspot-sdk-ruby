# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailUpdateParams < HubspotSDK::Models::Marketing::EmailUpdateRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailUpdateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :query_archived

        sig { params(query_archived: T::Boolean).void }
        attr_writer :query_archived

        sig do
          params(
            email_id: String,
            query_archived: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_id:,
          # Whether to return only results that have been archived.
          query_archived: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_id: String,
              query_archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
