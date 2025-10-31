# typed: strong

module HubspotSDK
  module Models
    class PublicInListFilterMetadata < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubspotSDK::PublicInListFilterMetadata,
            HubspotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :in_list_type

      sig { params(id: String, in_list_type: String).returns(T.attached_class) }
      def self.new(id:, in_list_type:)
      end

      sig { override.returns({ id: String, in_list_type: String }) }
      def to_hash
      end
    end
  end
end
