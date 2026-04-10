# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailGetRevisionParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailGetRevisionParams,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email_id

        sig { returns(String) }
        attr_accessor :revision_id

        sig do
          params(
            email_id: String,
            revision_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_id:, revision_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              email_id: String,
              revision_id: String,
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
