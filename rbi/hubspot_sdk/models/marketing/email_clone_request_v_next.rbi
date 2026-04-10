# typed: strong

module HubSpotSDK
  module Models
    module Marketing
      class EmailCloneRequestVNext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Marketing::EmailCloneRequestVNext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The email ID.
        sig { returns(String) }
        attr_accessor :id

        # The name to assign to the cloned email.
        sig { returns(T.nilable(String)) }
        attr_reader :clone_name

        sig { params(clone_name: String).void }
        attr_writer :clone_name

        # The language code for the cloned email, such as 'en' for English.
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        sig do
          params(id: String, clone_name: String, language: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # The email ID.
          id:,
          # The name to assign to the cloned email.
          clone_name: nil,
          # The language code for the cloned email, such as 'en' for English.
          language: nil
        )
        end

        sig do
          override.returns({ id: String, clone_name: String, language: String })
        end
        def to_hash
        end
      end
    end
  end
end
