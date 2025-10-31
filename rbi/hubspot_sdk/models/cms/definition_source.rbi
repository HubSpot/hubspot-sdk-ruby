# typed: strong

module HubspotSDK
  module Models
    module Cms
      class DefinitionSource < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::DefinitionSource,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig { params(type: String, name: String).returns(T.attached_class) }
        def self.new(type:, name: nil)
        end

        sig { override.returns({ type: String, name: String }) }
        def to_hash
        end
      end
    end
  end
end
