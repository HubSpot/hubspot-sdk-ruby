# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailRestoreRevisionToDraftParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailRestoreRevisionToDraftParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        sig { returns(Integer) }
        attr_accessor :revision_id

        sig do
          params(
            email_id: String,
            revision_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_id:, revision_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              email_id: String,
              revision_id: Integer,
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
