# typed: strong

module HubspotSDK
  module Models
    module Events
      class BehavioralEventTypeDefinitionLabels < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Events::BehavioralEventTypeDefinitionLabels,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :singular

        sig { returns(T.nilable(String)) }
        attr_reader :plural

        sig { params(plural: String).void }
        attr_writer :plural

        sig do
          params(singular: String, plural: String).returns(T.attached_class)
        end
        def self.new(singular:, plural: nil)
        end

        sig { override.returns({ singular: String, plural: String }) }
        def to_hash
        end
      end
    end
  end
end
