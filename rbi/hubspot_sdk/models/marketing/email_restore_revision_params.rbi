# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class EmailRestoreRevisionParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::EmailRestoreRevisionParams,
              HubspotSDK::Internal::AnyHash
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(email_id:, revision_id:, request_options: {})
        end

        sig do
          override.returns(
            {
              email_id: String,
              revision_id: String,
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
