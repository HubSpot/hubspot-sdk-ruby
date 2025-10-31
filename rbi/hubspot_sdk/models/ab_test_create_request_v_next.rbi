# typed: strong

module HubspotSDK
  module Models
    class AbTestCreateRequestVNext < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::AbTestCreateRequestVNext,
            HubspotSDK::Internal::AnyHash
          )
        end

      # ID of the object to test.
      sig { returns(String) }
      attr_accessor :content_id

      # Name of A/B test variation.
      sig { returns(String) }
      attr_accessor :variation_name

      # Request body object for creating A/B tests.
      sig do
        params(content_id: String, variation_name: String).returns(
          T.attached_class
        )
      end
      def self.new(
        # ID of the object to test.
        content_id:,
        # Name of A/B test variation.
        variation_name:
      )
      end

      sig { override.returns({ content_id: String, variation_name: String }) }
      def to_hash
      end
    end
  end
end
