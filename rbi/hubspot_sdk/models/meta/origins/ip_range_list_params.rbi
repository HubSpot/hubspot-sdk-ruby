# typed: strong

module HubSpotSDK
  module Models
    module Meta
      module Origins
        class IPRangeListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Meta::Origins::IPRangeListParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T.nilable(
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::OrSymbol
                ]
              )
            )
          end
          attr_reader :direction

          sig do
            params(
              direction:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::OrSymbol
                ]
            ).void
          end
          attr_writer :direction

          sig do
            returns(
              T.nilable(
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service::OrSymbol
                ]
              )
            )
          end
          attr_reader :service

          sig do
            params(
              service:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service::OrSymbol
                ]
            ).void
          end
          attr_writer :service

          sig do
            params(
              direction:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::OrSymbol
                ],
              service:
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service::OrSymbol
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(direction: nil, service: nil, request_options: {})
          end

          sig do
            override.returns(
              {
                direction:
                  T::Array[
                    HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::OrSymbol
                  ],
                service:
                  T::Array[
                    HubSpotSDK::Meta::Origins::IPRangeListParams::Service::OrSymbol
                  ],
                request_options: HubSpotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Direction
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INGRESS =
              T.let(
                :INGRESS,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::TaggedSymbol
              )
            EGRESS =
              T.let(
                :EGRESS,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Direction::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          module Service
            extend HubSpotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            EMAIL =
              T.let(
                :EMAIL,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
              )
            API =
              T.let(
                :API,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
              )
            DNS =
              T.let(
                :DNS,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
              )
            WEB_SCRAPING =
              T.let(
                :WEB_SCRAPING,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
              )
            TEST_SERVICE =
              T.let(
                :TEST_SERVICE,
                HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubSpotSDK::Meta::Origins::IPRangeListParams::Service::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
