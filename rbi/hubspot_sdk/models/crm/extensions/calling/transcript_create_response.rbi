# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptCreateResponse < HubSpotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateResponse,
                  HubSpotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { params(id: String).returns(T.attached_class) }
            def self.new(id:)
            end

            sig { override.returns({ id: String }) }
            def to_hash
            end
          end
        end
      end
    end
  end
end
