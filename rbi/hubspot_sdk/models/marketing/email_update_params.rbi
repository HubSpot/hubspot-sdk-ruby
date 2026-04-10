# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailUpdateParams < HubSpotSDK::Models::Marketing::EmailUpdateRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailUpdateParams,
              HubSpotSDK::Internal::AnyHash
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
            request_options: HubSpotSDK::RequestOptions::OrHash
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
              request_options: HubSpotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
