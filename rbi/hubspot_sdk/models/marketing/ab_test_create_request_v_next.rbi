# typed: strong

module HubspotSDK
  module Models
    module Marketing
      class AbTestCreateRequestVNext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Marketing::AbTestCreateRequestVNext,
              HubspotSDK::Internal::AnyHash
            )
          end

        # ID of the email to test.
        sig { returns(String) }
        attr_accessor :content_id

        # Name of the variation to be created.
        sig { returns(String) }
        attr_accessor :variation_name

        sig do
          params(content_id: String, variation_name: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # ID of the email to test.
          content_id:,
          # Name of the variation to be created.
          variation_name:
        )
        end

        sig { override.returns({ content_id: String, variation_name: String }) }
        def to_hash
        end
      end
    end
  end
end
