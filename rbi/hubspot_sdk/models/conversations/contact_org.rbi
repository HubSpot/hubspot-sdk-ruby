# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactOrg < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactOrg,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :company

        sig { params(company: String).void }
        attr_writer :company

        sig { returns(T.nilable(String)) }
        attr_reader :department

        sig { params(department: String).void }
        attr_writer :department

        sig { returns(T.nilable(String)) }
        attr_reader :title

        sig { params(title: String).void }
        attr_writer :title

        sig do
          params(company: String, department: String, title: String).returns(
            T.attached_class
          )
        end
        def self.new(company: nil, department: nil, title: nil)
        end

        sig do
          override.returns(
            { company: String, department: String, title: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
