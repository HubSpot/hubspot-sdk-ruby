# typed: strong

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptUtterance < HubSpotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubSpotSDK::Crm::Extensions::Calling::TranscriptUtterance,
                  HubSpotSDK::Internal::AnyHash
                )
              end

            sig { returns(String) }
            attr_accessor :id

            sig { returns(Integer) }
            attr_accessor :end_time_millis

            sig { returns(Integer) }
            attr_accessor :start_time_millis

            sig { returns(String) }
            attr_accessor :text

            sig { returns(T.nilable(String)) }
            attr_reader :language_code

            sig { params(language_code: String).void }
            attr_writer :language_code

            sig do
              returns(T.nilable(HubSpotSDK::Crm::Extensions::Calling::Speaker))
            end
            attr_reader :speaker

            sig do
              params(
                speaker: HubSpotSDK::Crm::Extensions::Calling::Speaker::OrHash
              ).void
            end
            attr_writer :speaker

            sig do
              params(
                id: String,
                end_time_millis: Integer,
                start_time_millis: Integer,
                text: String,
                language_code: String,
                speaker: HubSpotSDK::Crm::Extensions::Calling::Speaker::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              id:,
              end_time_millis:,
              start_time_millis:,
              text:,
              language_code: nil,
              speaker: nil
            )
            end

            sig do
              override.returns(
                {
                  id: String,
                  end_time_millis: Integer,
                  start_time_millis: Integer,
                  text: String,
                  language_code: String,
                  speaker: HubSpotSDK::Crm::Extensions::Calling::Speaker
                }
              )
            end
            def to_hash
            end
          end
        end
      end
    end
  end
end
