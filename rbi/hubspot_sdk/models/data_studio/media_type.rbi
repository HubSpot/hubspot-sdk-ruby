# typed: strong

module HubspotSDK
  module Models
    module DataStudio
      class MediaType < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::DataStudio::MediaType,
              HubspotSDK::Internal::AnyHash
            )
          end

        # An object containing additional parameters for the media type, where each
        # key-value pair is a string.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :parameters

        # The specific subtype of the media, represented as a string.
        sig { returns(String) }
        attr_accessor :subtype

        # The primary type of the media, represented as a string.
        sig { returns(String) }
        attr_accessor :type

        # A boolean indicating whether the media subtype is a wildcard.
        sig { returns(T::Boolean) }
        attr_accessor :wildcard_subtype

        # A boolean indicating whether the media type is a wildcard.
        sig { returns(T::Boolean) }
        attr_accessor :wildcard_type

        sig do
          params(
            parameters: T::Hash[Symbol, String],
            subtype: String,
            type: String,
            wildcard_subtype: T::Boolean,
            wildcard_type: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # An object containing additional parameters for the media type, where each
          # key-value pair is a string.
          parameters:,
          # The specific subtype of the media, represented as a string.
          subtype:,
          # The primary type of the media, represented as a string.
          type:,
          # A boolean indicating whether the media subtype is a wildcard.
          wildcard_subtype:,
          # A boolean indicating whether the media type is a wildcard.
          wildcard_type:
        )
        end

        sig do
          override.returns(
            {
              parameters: T::Hash[Symbol, String],
              subtype: String,
              type: String,
              wildcard_subtype: T::Boolean,
              wildcard_type: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
