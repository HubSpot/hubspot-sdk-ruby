# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailDeleteParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailDeleteParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        # Whether to return only results that have been archived.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :archived

        sig { params(archived: T::Boolean).void }
        attr_writer :archived

        sig do
          params(
            email_id: String,
            archived: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          email_id:,
          # Whether to return only results that have been archived.
          archived: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              email_id: String,
              archived: T::Boolean,
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
