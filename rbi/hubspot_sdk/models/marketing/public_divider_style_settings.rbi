# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class PublicDividerStyleSettings < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::PublicDividerStyleSettings,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(T.anything)) }
        attr_reader :color

        sig { params(color: T.anything).void }
        attr_writer :color

        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        sig { returns(T.nilable(String)) }
        attr_reader :line_type

        sig { params(line_type: String).void }
        attr_writer :line_type

        sig do
          params(color: T.anything, height: Integer, line_type: String).returns(
            T.attached_class
          )
        end
        def self.new(color: nil, height: nil, line_type: nil)
        end

        sig do
          override.returns(
            { color: T.anything, height: Integer, line_type: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
