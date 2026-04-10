# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class Speaker < HubSpotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::Calling::Speaker,
                  HubSpotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(String) }
            attr_accessor :name

            sig { returns(T.nilable(String)) }
            attr_reader :email

            sig { params(email: String).void }
            attr_writer :email

            sig do
              params(id: String, name: String, email: String).returns(
                T.attached_class
              )
            end
            def self.new(id:, name:, email: nil)
            end

            sig do
              override.returns({ id: String, name: String, email: String })
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
