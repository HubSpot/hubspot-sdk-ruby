# typed: strong

module HubspotSDK
  module Models
    module Settings
      class CompanyCurrency < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Settings::CompanyCurrency,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { params(id: String, created_at: Time).returns(T.attached_class) }
        def self.new(id:, created_at:)
        end

        sig { override.returns({ id: String, created_at: Time }) }
        def to_hash
        end
      end
    end
  end
end
