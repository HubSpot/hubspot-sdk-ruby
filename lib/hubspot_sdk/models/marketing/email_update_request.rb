# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute active_domain
        #   The active domain of the email.
        #
        #   @return [String, nil]
        optional :active_domain, String, api_name: :activeDomain

        # @!attribute archived
        #   Determines if the email is archived or not.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute business_unit_id
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer, api_name: :businessUnitId

        # @!attribute campaign
        #   The ID of the campaign this email is associated to.
        #
        #   @return [String, nil]
        optional :campaign, String

        # @!attribute content
        #   Data structure representing the content of the email.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailContent, nil]
        optional :content, -> { HubspotSDK::Marketing::PublicEmailContent }

        # @!attribute folder_id_v2
        #
        #   @return [Integer, nil]
        optional :folder_id_v2, Integer, api_name: :folderIdV2

        # @!attribute from
        #   Data structure representing the from fields on the email.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailFromDetails, nil]
        optional :from, -> { HubspotSDK::Marketing::PublicEmailFromDetails }

        # @!attribute jitter_send_time
        #
        #   @return [Boolean, nil]
        optional :jitter_send_time, HubspotSDK::Internal::Type::Boolean, api_name: :jitterSendTime

        # @!attribute language
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Language, nil]
        optional :language, enum: -> { HubspotSDK::Marketing::EmailUpdateRequest::Language }

        # @!attribute name
        #   The name of the email, as displayed on the email dashboard.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute publish_date
        #   The date and time the email is scheduled for, in ISO8601 representation. This is
        #   only used in local time or scheduled emails.
        #
        #   @return [Time, nil]
        optional :publish_date, Time, api_name: :publishDate

        # @!attribute rss_data
        #   RSS related data if it is a blog or rss email.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicRssEmailDetails, nil]
        optional :rss_data, -> { HubspotSDK::Marketing::PublicRssEmailDetails }, api_name: :rssData

        # @!attribute send_on_publish
        #   Determines whether the email will be sent immediately on publish.
        #
        #   @return [Boolean, nil]
        optional :send_on_publish, HubspotSDK::Internal::Type::Boolean, api_name: :sendOnPublish

        # @!attribute state
        #   The email state.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::State, nil]
        optional :state, enum: -> { HubspotSDK::Marketing::EmailUpdateRequest::State }

        # @!attribute subcategory
        #   The email subcategory.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Subcategory, nil]
        optional :subcategory, enum: -> { HubspotSDK::Marketing::EmailUpdateRequest::Subcategory }

        # @!attribute subject
        #   The subject of the email.
        #
        #   @return [String, nil]
        optional :subject, String

        # @!attribute subscription_details
        #   Data structure representing the subscription fields of the email.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailSubscriptionDetails, nil]
        optional :subscription_details,
                 -> { HubspotSDK::Marketing::PublicEmailSubscriptionDetails },
                 api_name: :subscriptionDetails

        # @!attribute testing
        #   AB testing related data. This property is only returned for AB type emails.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailTestingDetails, nil]
        optional :testing, -> { HubspotSDK::Marketing::PublicEmailTestingDetails }

        # @!attribute to
        #   Data structure representing the to fields of the email.
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailToDetails, nil]
        optional :to, -> { HubspotSDK::Marketing::PublicEmailToDetails }

        # @!attribute webversion
        #
        #   @return [HubspotSDK::Models::Marketing::PublicWebversionDetails, nil]
        optional :webversion, -> { HubspotSDK::Marketing::PublicWebversionDetails }

        # @!method initialize(active_domain: nil, archived: nil, business_unit_id: nil, campaign: nil, content: nil, folder_id_v2: nil, from: nil, jitter_send_time: nil, language: nil, name: nil, publish_date: nil, rss_data: nil, send_on_publish: nil, state: nil, subcategory: nil, subject: nil, subscription_details: nil, testing: nil, to: nil, webversion: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Marketing::EmailUpdateRequest} for more details.
        #
        #   Properties of a marketing email you can update via the API.
        #
        #   @param active_domain [String] The active domain of the email.
        #
        #   @param archived [Boolean] Determines if the email is archived or not.
        #
        #   @param business_unit_id [Integer]
        #
        #   @param campaign [String] The ID of the campaign this email is associated to.
        #
        #   @param content [HubspotSDK::Models::Marketing::PublicEmailContent] Data structure representing the content of the email.
        #
        #   @param folder_id_v2 [Integer]
        #
        #   @param from [HubspotSDK::Models::Marketing::PublicEmailFromDetails] Data structure representing the from fields on the email.
        #
        #   @param jitter_send_time [Boolean]
        #
        #   @param language [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Language]
        #
        #   @param name [String] The name of the email, as displayed on the email dashboard.
        #
        #   @param publish_date [Time] The date and time the email is scheduled for, in ISO8601 representation. This is
        #
        #   @param rss_data [HubspotSDK::Models::Marketing::PublicRssEmailDetails] RSS related data if it is a blog or rss email.
        #
        #   @param send_on_publish [Boolean] Determines whether the email will be sent immediately on publish.
        #
        #   @param state [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::State] The email state.
        #
        #   @param subcategory [Symbol, HubspotSDK::Models::Marketing::EmailUpdateRequest::Subcategory] The email subcategory.
        #
        #   @param subject [String] The subject of the email.
        #
        #   @param subscription_details [HubspotSDK::Models::Marketing::PublicEmailSubscriptionDetails] Data structure representing the subscription fields of the email.
        #
        #   @param testing [HubspotSDK::Models::Marketing::PublicEmailTestingDetails] AB testing related data. This property is only returned for AB type emails.
        #
        #   @param to [HubspotSDK::Models::Marketing::PublicEmailToDetails] Data structure representing the to fields of the email.
        #
        #   @param webversion [HubspotSDK::Models::Marketing::PublicWebversionDetails]

        # @see HubspotSDK::Models::Marketing::EmailUpdateRequest#language
        module Language
          extend HubspotSDK::Internal::Type::Enum

          AF = :af
          AF_NA = :"af-na"
          AF_ZA = :"af-za"
          AGQ = :agq
          AGQ_CM = :"agq-cm"
          AK = :ak
          AK_GH = :"ak-gh"
          AM = :am
          AM_ET = :"am-et"
          ANN = :ann
          ANN_NG = :"ann-ng"
          AR = :ar
          AR_001 = :"ar-001"
          AR_AE = :"ar-ae"
          AR_BH = :"ar-bh"
          AR_DJ = :"ar-dj"
          AR_DZ = :"ar-dz"
          AR_EG = :"ar-eg"
          AR_EH = :"ar-eh"
          AR_ER = :"ar-er"
          AR_IL = :"ar-il"
          AR_IQ = :"ar-iq"
          AR_JO = :"ar-jo"
          AR_KM = :"ar-km"
          AR_KW = :"ar-kw"
          AR_LB = :"ar-lb"
          AR_LY = :"ar-ly"
          AR_MA = :"ar-ma"
          AR_MR = :"ar-mr"
          AR_OM = :"ar-om"
          AR_PS = :"ar-ps"
          AR_QA = :"ar-qa"
          AR_SA = :"ar-sa"
          AR_SD = :"ar-sd"
          AR_SO = :"ar-so"
          AR_SS = :"ar-ss"
          AR_SY = :"ar-sy"
          AR_TD = :"ar-td"
          AR_TN = :"ar-tn"
          AR_YE = :"ar-ye"
          AS = :as
          AS_IN = :"as-in"
          ASA = :asa
          ASA_TZ = :"asa-tz"
          AST = :ast
          AST_ES = :"ast-es"
          AZ = :az
          AZ_AZ = :"az-az"
          BAS = :bas
          BAS_CM = :"bas-cm"
          BE = :be
          BE_BY = :"be-by"
          BEM = :bem
          BEM_ZM = :"bem-zm"
          BEZ = :bez
          BEZ_TZ = :"bez-tz"
          BG = :bg
          BG_BG = :"bg-bg"
          BGC = :bgc
          BGC_IN = :"bgc-in"
          BHO = :bho
          BHO_IN = :"bho-in"
          BM = :bm
          BM_ML = :"bm-ml"
          BN = :bn
          BN_BD = :"bn-bd"
          BN_IN = :"bn-in"
          BO = :bo
          BO_CN = :"bo-cn"
          BO_IN = :"bo-in"
          BR = :br
          BR_FR = :"br-fr"
          BRX = :brx
          BRX_IN = :"brx-in"
          BS = :bs
          BS_BA = :"bs-ba"
          CA = :ca
          CA_AD = :"ca-ad"
          CA_ES = :"ca-es"
          CA_FR = :"ca-fr"
          CA_IT = :"ca-it"
          CCP = :ccp
          CCP_BD = :"ccp-bd"
          CCP_IN = :"ccp-in"
          CE = :ce
          CE_RU = :"ce-ru"
          CEB = :ceb
          CEB_PH = :"ceb-ph"
          CGG = :cgg
          CGG_UG = :"cgg-ug"
          CHR = :chr
          CHR_US = :"chr-us"
          CKB = :ckb
          CKB_IQ = :"ckb-iq"
          CKB_IR = :"ckb-ir"
          CS = :cs
          CS_CZ = :"cs-cz"
          CU = :cu
          CU_RU = :"cu-ru"
          CV = :cv
          CV_RU = :"cv-ru"
          CY = :cy
          CY_GB = :"cy-gb"
          DA = :da
          DA_DK = :"da-dk"
          DA_GL = :"da-gl"
          DAV = :dav
          DAV_KE = :"dav-ke"
          DE = :de
          DE_AT = :"de-at"
          DE_BE = :"de-be"
          DE_CH = :"de-ch"
          DE_DE = :"de-de"
          DE_GR = :"de-gr"
          DE_IT = :"de-it"
          DE_LI = :"de-li"
          DE_LU = :"de-lu"
          DJE = :dje
          DJE_NE = :"dje-ne"
          DOI = :doi
          DOI_IN = :"doi-in"
          DSB = :dsb
          DSB_DE = :"dsb-de"
          DUA = :dua
          DUA_CM = :"dua-cm"
          DYO = :dyo
          DYO_SN = :"dyo-sn"
          DZ = :dz
          DZ_BT = :"dz-bt"
          EBU = :ebu
          EBU_KE = :"ebu-ke"
          EE = :ee
          EE_GH = :"ee-gh"
          EE_TG = :"ee-tg"
          EL = :el
          EL_CY = :"el-cy"
          EL_GR = :"el-gr"
          EN = :en
          EN_001 = :"en-001"
          EN_150 = :"en-150"
          EN_AE = :"en-ae"
          EN_AG = :"en-ag"
          EN_AI = :"en-ai"
          EN_AS = :"en-as"
          EN_AT = :"en-at"
          EN_AU = :"en-au"
          EN_BB = :"en-bb"
          EN_BE = :"en-be"
          EN_BI = :"en-bi"
          EN_BM = :"en-bm"
          EN_BS = :"en-bs"
          EN_BW = :"en-bw"
          EN_BZ = :"en-bz"
          EN_CA = :"en-ca"
          EN_CC = :"en-cc"
          EN_CH = :"en-ch"
          EN_CK = :"en-ck"
          EN_CM = :"en-cm"
          EN_CN = :"en-cn"
          EN_CX = :"en-cx"
          EN_CY = :"en-cy"
          EN_DE = :"en-de"
          EN_DG = :"en-dg"
          EN_DK = :"en-dk"
          EN_DM = :"en-dm"
          EN_EE = :"en-ee"
          EN_EG = :"en-eg"
          EN_ER = :"en-er"
          EN_ES = :"en-es"
          EN_FI = :"en-fi"
          EN_FJ = :"en-fj"
          EN_FK = :"en-fk"
          EN_FM = :"en-fm"
          EN_FR = :"en-fr"
          EN_GB = :"en-gb"
          EN_GD = :"en-gd"
          EN_GG = :"en-gg"
          EN_GH = :"en-gh"
          EN_GI = :"en-gi"
          EN_GM = :"en-gm"
          EN_GU = :"en-gu"
          EN_GY = :"en-gy"
          EN_HK = :"en-hk"
          EN_IE = :"en-ie"
          EN_IL = :"en-il"
          EN_IM = :"en-im"
          EN_IN = :"en-in"
          EN_IO = :"en-io"
          EN_JE = :"en-je"
          EN_JM = :"en-jm"
          EN_KE = :"en-ke"
          EN_KI = :"en-ki"
          EN_KN = :"en-kn"
          EN_KY = :"en-ky"
          EN_LC = :"en-lc"
          EN_LR = :"en-lr"
          EN_LS = :"en-ls"
          EN_LU = :"en-lu"
          EN_MG = :"en-mg"
          EN_MH = :"en-mh"
          EN_MO = :"en-mo"
          EN_MP = :"en-mp"
          EN_MS = :"en-ms"
          EN_MT = :"en-mt"
          EN_MU = :"en-mu"
          EN_MV = :"en-mv"
          EN_MW = :"en-mw"
          EN_MX = :"en-mx"
          EN_MY = :"en-my"
          EN_NA = :"en-na"
          EN_NF = :"en-nf"
          EN_NG = :"en-ng"
          EN_NL = :"en-nl"
          EN_NR = :"en-nr"
          EN_NU = :"en-nu"
          EN_NZ = :"en-nz"
          EN_PG = :"en-pg"
          EN_PH = :"en-ph"
          EN_PK = :"en-pk"
          EN_PN = :"en-pn"
          EN_PR = :"en-pr"
          EN_PT = :"en-pt"
          EN_PW = :"en-pw"
          EN_RW = :"en-rw"
          EN_SB = :"en-sb"
          EN_SC = :"en-sc"
          EN_SD = :"en-sd"
          EN_SE = :"en-se"
          EN_SG = :"en-sg"
          EN_SH = :"en-sh"
          EN_SI = :"en-si"
          EN_SL = :"en-sl"
          EN_SS = :"en-ss"
          EN_SX = :"en-sx"
          EN_SZ = :"en-sz"
          EN_TC = :"en-tc"
          EN_TK = :"en-tk"
          EN_TN = :"en-tn"
          EN_TO = :"en-to"
          EN_TT = :"en-tt"
          EN_TV = :"en-tv"
          EN_TZ = :"en-tz"
          EN_UG = :"en-ug"
          EN_UM = :"en-um"
          EN_US = :"en-us"
          EN_VC = :"en-vc"
          EN_VG = :"en-vg"
          EN_VI = :"en-vi"
          EN_VU = :"en-vu"
          EN_WS = :"en-ws"
          EN_ZA = :"en-za"
          EN_ZM = :"en-zm"
          EN_ZW = :"en-zw"
          EO = :eo
          EO_001 = :"eo-001"
          ES = :es
          ES_419 = :"es-419"
          ES_AR = :"es-ar"
          ES_BO = :"es-bo"
          ES_BR = :"es-br"
          ES_BZ = :"es-bz"
          ES_CL = :"es-cl"
          ES_CO = :"es-co"
          ES_CR = :"es-cr"
          ES_CU = :"es-cu"
          ES_DO = :"es-do"
          ES_EA = :"es-ea"
          ES_EC = :"es-ec"
          ES_ES = :"es-es"
          ES_GQ = :"es-gq"
          ES_GT = :"es-gt"
          ES_HN = :"es-hn"
          ES_IC = :"es-ic"
          ES_MX = :"es-mx"
          ES_NI = :"es-ni"
          ES_PA = :"es-pa"
          ES_PE = :"es-pe"
          ES_PH = :"es-ph"
          ES_PR = :"es-pr"
          ES_PY = :"es-py"
          ES_SV = :"es-sv"
          ES_US = :"es-us"
          ES_UY = :"es-uy"
          ES_VE = :"es-ve"
          ET = :et
          ET_EE = :"et-ee"
          EU = :eu
          EU_ES = :"eu-es"
          EWO = :ewo
          EWO_CM = :"ewo-cm"
          FA = :fa
          FA_AF = :"fa-af"
          FA_IR = :"fa-ir"
          FF = :ff
          FF_BF = :"ff-bf"
          FF_CM = :"ff-cm"
          FF_GH = :"ff-gh"
          FF_GM = :"ff-gm"
          FF_GN = :"ff-gn"
          FF_GW = :"ff-gw"
          FF_LR = :"ff-lr"
          FF_MR = :"ff-mr"
          FF_NE = :"ff-ne"
          FF_NG = :"ff-ng"
          FF_SL = :"ff-sl"
          FF_SN = :"ff-sn"
          FI = :fi
          FI_FI = :"fi-fi"
          FIL = :fil
          FIL_PH = :"fil-ph"
          FO = :fo
          FO_DK = :"fo-dk"
          FO_FO = :"fo-fo"
          FR = :fr
          FR_BE = :"fr-be"
          FR_BF = :"fr-bf"
          FR_BI = :"fr-bi"
          FR_BJ = :"fr-bj"
          FR_BL = :"fr-bl"
          FR_CA = :"fr-ca"
          FR_CD = :"fr-cd"
          FR_CF = :"fr-cf"
          FR_CG = :"fr-cg"
          FR_CH = :"fr-ch"
          FR_CI = :"fr-ci"
          FR_CM = :"fr-cm"
          FR_DJ = :"fr-dj"
          FR_DZ = :"fr-dz"
          FR_FR = :"fr-fr"
          FR_GA = :"fr-ga"
          FR_GF = :"fr-gf"
          FR_GN = :"fr-gn"
          FR_GP = :"fr-gp"
          FR_GQ = :"fr-gq"
          FR_HT = :"fr-ht"
          FR_KM = :"fr-km"
          FR_LU = :"fr-lu"
          FR_MA = :"fr-ma"
          FR_MC = :"fr-mc"
          FR_MF = :"fr-mf"
          FR_MG = :"fr-mg"
          FR_ML = :"fr-ml"
          FR_MQ = :"fr-mq"
          FR_MR = :"fr-mr"
          FR_MU = :"fr-mu"
          FR_NC = :"fr-nc"
          FR_NE = :"fr-ne"
          FR_PF = :"fr-pf"
          FR_PM = :"fr-pm"
          FR_RE = :"fr-re"
          FR_RW = :"fr-rw"
          FR_SC = :"fr-sc"
          FR_SN = :"fr-sn"
          FR_SY = :"fr-sy"
          FR_TD = :"fr-td"
          FR_TG = :"fr-tg"
          FR_TN = :"fr-tn"
          FR_VU = :"fr-vu"
          FR_WF = :"fr-wf"
          FR_YT = :"fr-yt"
          FRR = :frr
          FRR_DE = :"frr-de"
          FUR = :fur
          FUR_IT = :"fur-it"
          FY = :fy
          FY_NL = :"fy-nl"
          GA = :ga
          GA_GB = :"ga-gb"
          GA_IE = :"ga-ie"
          GD = :gd
          GD_GB = :"gd-gb"
          GL = :gl
          GL_ES = :"gl-es"
          GSW = :gsw
          GSW_CH = :"gsw-ch"
          GSW_FR = :"gsw-fr"
          GSW_LI = :"gsw-li"
          GU = :gu
          GU_IN = :"gu-in"
          GUZ = :guz
          GUZ_KE = :"guz-ke"
          GV = :gv
          GV_IM = :"gv-im"
          HA = :ha
          HA_GH = :"ha-gh"
          HA_NE = :"ha-ne"
          HA_NG = :"ha-ng"
          HAW = :haw
          HAW_US = :"haw-us"
          HE = :he
          HE_IL = :"he-il"
          HI = :hi
          HI_IN = :"hi-in"
          HR = :hr
          HR_BA = :"hr-ba"
          HR_HR = :"hr-hr"
          HSB = :hsb
          HSB_DE = :"hsb-de"
          HU = :hu
          HU_HU = :"hu-hu"
          HY = :hy
          HY_AM = :"hy-am"
          IA = :ia
          IA_001 = :"ia-001"
          ID = :id
          ID_ID = :"id-id"
          IG = :ig
          IG_NG = :"ig-ng"
          II = :ii
          II_CN = :"ii-cn"
          IS = :is
          IS_IS = :"is-is"
          IT = :it
          IT_CH = :"it-ch"
          IT_IT = :"it-it"
          IT_SM = :"it-sm"
          IT_VA = :"it-va"
          JA = :ja
          JA_JP = :"ja-jp"
          JGO = :jgo
          JGO_CM = :"jgo-cm"
          JMC = :jmc
          JMC_TZ = :"jmc-tz"
          JV = :jv
          JV_ID = :"jv-id"
          KA = :ka
          KA_GE = :"ka-ge"
          KAB = :kab
          KAB_DZ = :"kab-dz"
          KAM = :kam
          KAM_KE = :"kam-ke"
          KDE = :kde
          KDE_TZ = :"kde-tz"
          KEA = :kea
          KEA_CV = :"kea-cv"
          KGP = :kgp
          KGP_BR = :"kgp-br"
          KH = :kh
          KHQ = :khq
          KHQ_ML = :"khq-ml"
          KI = :ki
          KI_KE = :"ki-ke"
          KK = :kk
          KK_KZ = :"kk-kz"
          KKJ = :kkj
          KKJ_CM = :"kkj-cm"
          KL = :kl
          KL_GL = :"kl-gl"
          KLN = :kln
          KLN_KE = :"kln-ke"
          KM = :km
          KM_KH = :"km-kh"
          KN = :kn
          KN_IN = :"kn-in"
          KO = :ko
          KO_KP = :"ko-kp"
          KO_KR = :"ko-kr"
          KOK = :kok
          KOK_IN = :"kok-in"
          KS = :ks
          KS_IN = :"ks-in"
          KSB = :ksb
          KSB_TZ = :"ksb-tz"
          KSF = :ksf
          KSF_CM = :"ksf-cm"
          KSH = :ksh
          KSH_DE = :"ksh-de"
          KU = :ku
          KU_TR = :"ku-tr"
          KW = :kw
          KW_GB = :"kw-gb"
          KY = :ky
          KY_KG = :"ky-kg"
          LAG = :lag
          LAG_TZ = :"lag-tz"
          LB = :lb
          LB_LU = :"lb-lu"
          LG = :lg
          LG_UG = :"lg-ug"
          LKT = :lkt
          LKT_US = :"lkt-us"
          LN = :ln
          LN_AO = :"ln-ao"
          LN_CD = :"ln-cd"
          LN_CF = :"ln-cf"
          LN_CG = :"ln-cg"
          LO = :lo
          LO_LA = :"lo-la"
          LRC = :lrc
          LRC_IQ = :"lrc-iq"
          LRC_IR = :"lrc-ir"
          LT = :lt
          LT_LT = :"lt-lt"
          LU = :lu
          LU_CD = :"lu-cd"
          LUO = :luo
          LUO_KE = :"luo-ke"
          LUY = :luy
          LUY_KE = :"luy-ke"
          LV = :lv
          LV_LV = :"lv-lv"
          MAI = :mai
          MAI_IN = :"mai-in"
          MAS = :mas
          MAS_KE = :"mas-ke"
          MAS_TZ = :"mas-tz"
          MDF = :mdf
          MDF_RU = :"mdf-ru"
          MER = :mer
          MER_KE = :"mer-ke"
          MFE = :mfe
          MFE_MU = :"mfe-mu"
          MG = :mg
          MG_MG = :"mg-mg"
          MGH = :mgh
          MGH_MZ = :"mgh-mz"
          MGO = :mgo
          MGO_CM = :"mgo-cm"
          MI = :mi
          MI_NZ = :"mi-nz"
          MK = :mk
          MK_MK = :"mk-mk"
          ML = :ml
          ML_IN = :"ml-in"
          MN = :mn
          MN_MN = :"mn-mn"
          MNI = :mni
          MNI_IN = :"mni-in"
          MR = :mr
          MR_IN = :"mr-in"
          MS = :ms
          MS_BN = :"ms-bn"
          MS_ID = :"ms-id"
          MS_MY = :"ms-my"
          MS_SG = :"ms-sg"
          MT = :mt
          MT_MT = :"mt-mt"
          MUA = :mua
          MUA_CM = :"mua-cm"
          MY = :my
          MY_MM = :"my-mm"
          MZN = :mzn
          MZN_IR = :"mzn-ir"
          NAQ = :naq
          NAQ_NA = :"naq-na"
          NB = :nb
          NB_NO = :"nb-no"
          NB_SJ = :"nb-sj"
          ND = :nd
          ND_ZW = :"nd-zw"
          NDS = :nds
          NDS_DE = :"nds-de"
          NDS_NL = :"nds-nl"
          NE = :ne
          NE_IN = :"ne-in"
          NE_NP = :"ne-np"
          NL = :nl
          NL_AW = :"nl-aw"
          NL_BE = :"nl-be"
          NL_BQ = :"nl-bq"
          NL_CH = :"nl-ch"
          NL_CW = :"nl-cw"
          NL_LU = :"nl-lu"
          NL_NL = :"nl-nl"
          NL_SR = :"nl-sr"
          NL_SX = :"nl-sx"
          NMG = :nmg
          NMG_CM = :"nmg-cm"
          NN = :nn
          NN_NO = :"nn-no"
          NNH = :nnh
          NNH_CM = :"nnh-cm"
          NO = :no
          NO_NO = :"no-no"
          NUS = :nus
          NUS_SS = :"nus-ss"
          NYN = :nyn
          NYN_UG = :"nyn-ug"
          OC = :oc
          OC_ES = :"oc-es"
          OC_FR = :"oc-fr"
          OM = :om
          OM_ET = :"om-et"
          OM_KE = :"om-ke"
          OR = :or
          OR_IN = :"or-in"
          OS = :os
          OS_GE = :"os-ge"
          OS_RU = :"os-ru"
          PA = :pa
          PA_IN = :"pa-in"
          PA_PK = :"pa-pk"
          PCM = :pcm
          PCM_NG = :"pcm-ng"
          PIS = :pis
          PIS_SB = :"pis-sb"
          PL = :pl
          PL_PL = :"pl-pl"
          PRG = :prg
          PRG_001 = :"prg-001"
          PS = :ps
          PS_AF = :"ps-af"
          PS_PK = :"ps-pk"
          PT = :pt
          PT_AO = :"pt-ao"
          PT_BR = :"pt-br"
          PT_CH = :"pt-ch"
          PT_CV = :"pt-cv"
          PT_GQ = :"pt-gq"
          PT_GW = :"pt-gw"
          PT_LU = :"pt-lu"
          PT_MO = :"pt-mo"
          PT_MZ = :"pt-mz"
          PT_PT = :"pt-pt"
          PT_ST = :"pt-st"
          PT_TL = :"pt-tl"
          QU = :qu
          QU_BO = :"qu-bo"
          QU_EC = :"qu-ec"
          QU_PE = :"qu-pe"
          RAJ = :raj
          RAJ_IN = :"raj-in"
          RM = :rm
          RM_CH = :"rm-ch"
          RN = :rn
          RN_BI = :"rn-bi"
          RO = :ro
          RO_MD = :"ro-md"
          RO_RO = :"ro-ro"
          ROF = :rof
          ROF_TZ = :"rof-tz"
          RU = :ru
          RU_BY = :"ru-by"
          RU_KG = :"ru-kg"
          RU_KZ = :"ru-kz"
          RU_MD = :"ru-md"
          RU_RU = :"ru-ru"
          RU_UA = :"ru-ua"
          RW = :rw
          RW_RW = :"rw-rw"
          RWK = :rwk
          RWK_TZ = :"rwk-tz"
          SA = :sa
          SA_IN = :"sa-in"
          SAH = :sah
          SAH_RU = :"sah-ru"
          SAQ = :saq
          SAQ_KE = :"saq-ke"
          SAT = :sat
          SAT_IN = :"sat-in"
          SBP = :sbp
          SBP_TZ = :"sbp-tz"
          SC = :sc
          SC_IT = :"sc-it"
          SD = :sd
          SD_IN = :"sd-in"
          SD_PK = :"sd-pk"
          SE = :se
          SE_FI = :"se-fi"
          SE_NO = :"se-no"
          SE_SE = :"se-se"
          SEH = :seh
          SEH_MZ = :"seh-mz"
          SES = :ses
          SES_ML = :"ses-ml"
          SG = :sg
          SG_CF = :"sg-cf"
          SHI = :shi
          SHI_MA = :"shi-ma"
          SI = :si
          SI_LK = :"si-lk"
          SK = :sk
          SK_SK = :"sk-sk"
          SL = :sl
          SL_SI = :"sl-si"
          SMN = :smn
          SMN_FI = :"smn-fi"
          SMS = :sms
          SMS_FI = :"sms-fi"
          SN = :sn
          SN_ZW = :"sn-zw"
          SO = :so
          SO_DJ = :"so-dj"
          SO_ET = :"so-et"
          SO_KE = :"so-ke"
          SO_SO = :"so-so"
          SQ = :sq
          SQ_AL = :"sq-al"
          SQ_MK = :"sq-mk"
          SQ_XK = :"sq-xk"
          SR = :sr
          SR_BA = :"sr-ba"
          SR_CS = :"sr-cs"
          SR_ME = :"sr-me"
          SR_RS = :"sr-rs"
          SR_XK = :"sr-xk"
          SU = :su
          SU_ID = :"su-id"
          SV = :sv
          SV_AX = :"sv-ax"
          SV_FI = :"sv-fi"
          SV_SE = :"sv-se"
          SW = :sw
          SW_CD = :"sw-cd"
          SW_KE = :"sw-ke"
          SW_TZ = :"sw-tz"
          SW_UG = :"sw-ug"
          SY = :sy
          TA = :ta
          TA_IN = :"ta-in"
          TA_LK = :"ta-lk"
          TA_MY = :"ta-my"
          TA_SG = :"ta-sg"
          TE = :te
          TE_IN = :"te-in"
          TEO = :teo
          TEO_KE = :"teo-ke"
          TEO_UG = :"teo-ug"
          TG = :tg
          TG_TJ = :"tg-tj"
          TH = :th
          TH_TH = :"th-th"
          TI = :ti
          TI_ER = :"ti-er"
          TI_ET = :"ti-et"
          TK = :tk
          TK_TM = :"tk-tm"
          TL = :tl
          TO = :to
          TO_TO = :"to-to"
          TOK = :tok
          TOK_001 = :"tok-001"
          TR = :tr
          TR_CY = :"tr-cy"
          TR_TR = :"tr-tr"
          TT = :tt
          TT_RU = :"tt-ru"
          TWQ = :twq
          TWQ_NE = :"twq-ne"
          TZM = :tzm
          TZM_MA = :"tzm-ma"
          UG = :ug
          UG_CN = :"ug-cn"
          UK = :uk
          UK_UA = :"uk-ua"
          UR = :ur
          UR_IN = :"ur-in"
          UR_PK = :"ur-pk"
          UZ = :uz
          UZ_AF = :"uz-af"
          UZ_UZ = :"uz-uz"
          VAI = :vai
          VAI_LR = :"vai-lr"
          VI = :vi
          VI_VN = :"vi-vn"
          VO = :vo
          VO_001 = :"vo-001"
          VUN = :vun
          VUN_TZ = :"vun-tz"
          WAE = :wae
          WAE_CH = :"wae-ch"
          WO = :wo
          WO_SN = :"wo-sn"
          XH = :xh
          XH_ZA = :"xh-za"
          XOG = :xog
          XOG_UG = :"xog-ug"
          YAV = :yav
          YAV_CM = :"yav-cm"
          YI = :yi
          YI_001 = :"yi-001"
          YO = :yo
          YO_BJ = :"yo-bj"
          YO_NG = :"yo-ng"
          YRL = :yrl
          YRL_BR = :"yrl-br"
          YRL_CO = :"yrl-co"
          YRL_VE = :"yrl-ve"
          YUE = :yue
          YUE_CN = :"yue-cn"
          YUE_HK = :"yue-hk"
          ZGH = :zgh
          ZGH_MA = :"zgh-ma"
          ZH = :zh
          ZH_CN = :"zh-cn"
          ZH_HANS = :"zh-hans"
          ZH_HANT = :"zh-hant"
          ZH_HK = :"zh-hk"
          ZH_MO = :"zh-mo"
          ZH_SG = :"zh-sg"
          ZH_TW = :"zh-tw"
          ZU = :zu
          ZU_ZA = :"zu-za"

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The email state.
        #
        # @see HubspotSDK::Models::Marketing::EmailUpdateRequest#state
        module State
          extend HubspotSDK::Internal::Type::Enum

          AGENT_GENERATED = :AGENT_GENERATED
          AUTOMATED = :AUTOMATED
          AUTOMATED_AB = :AUTOMATED_AB
          AUTOMATED_AB_VARIANT = :AUTOMATED_AB_VARIANT
          AUTOMATED_DRAFT = :AUTOMATED_DRAFT
          AUTOMATED_DRAFT_AB = :AUTOMATED_DRAFT_AB
          AUTOMATED_DRAFT_ABVARIANT = :AUTOMATED_DRAFT_ABVARIANT
          AUTOMATED_FOR_FORM = :AUTOMATED_FOR_FORM
          AUTOMATED_FOR_FORM_BUFFER = :AUTOMATED_FOR_FORM_BUFFER
          AUTOMATED_FOR_FORM_DRAFT = :AUTOMATED_FOR_FORM_DRAFT
          AUTOMATED_FOR_FORM_LEGACY = :AUTOMATED_FOR_FORM_LEGACY
          AUTOMATED_LOSER_ABVARIANT = :AUTOMATED_LOSER_ABVARIANT
          AUTOMATED_SENDING = :AUTOMATED_SENDING
          BLOG_EMAIL_DRAFT = :BLOG_EMAIL_DRAFT
          BLOG_EMAIL_PUBLISHED = :BLOG_EMAIL_PUBLISHED
          DRAFT = :DRAFT
          DRAFT_AB = :DRAFT_AB
          DRAFT_AB_VARIANT = :DRAFT_AB_VARIANT
          ERROR = :ERROR
          LOSER_AB_VARIANT = :LOSER_AB_VARIANT
          PAGE_STUB = :PAGE_STUB
          PRE_PROCESSING = :PRE_PROCESSING
          PROCESSING = :PROCESSING
          PUBLISHED = :PUBLISHED
          PUBLISHED_AB = :PUBLISHED_AB
          PUBLISHED_AB_VARIANT = :PUBLISHED_AB_VARIANT
          PUBLISHED_OR_SCHEDULED = :PUBLISHED_OR_SCHEDULED
          RSS_TO_EMAIL_DRAFT = :RSS_TO_EMAIL_DRAFT
          RSS_TO_EMAIL_PUBLISHED = :RSS_TO_EMAIL_PUBLISHED
          SCHEDULED = :SCHEDULED
          SCHEDULED_AB = :SCHEDULED_AB
          SCHEDULED_OR_PUBLISHED = :SCHEDULED_OR_PUBLISHED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The email subcategory.
        #
        # @see HubspotSDK::Models::Marketing::EmailUpdateRequest#subcategory
        module Subcategory
          extend HubspotSDK::Internal::Type::Enum

          AB_LOSER_VARIANT = :ab_loser_variant
          AB_LOSER_VARIANT_SITE_PAGE = :ab_loser_variant_site_page
          AB_MASTER = :ab_master
          AB_MASTER_SITE_PAGE = :ab_master_site_page
          AB_VARIANT = :ab_variant
          AB_VARIANT_SITE_PAGE = :ab_variant_site_page
          AUTOMATED = :automated
          AUTOMATED_AB_MASTER = :automated_ab_master
          AUTOMATED_AB_VARIANT = :automated_ab_variant
          AUTOMATED_FOR_CRM = :automated_for_crm
          AUTOMATED_FOR_CUSTOM_SURVEY = :automated_for_custom_survey
          AUTOMATED_FOR_DEAL = :automated_for_deal
          AUTOMATED_FOR_FEEDBACK_CES = :automated_for_feedback_ces
          AUTOMATED_FOR_FEEDBACK_CUSTOM = :automated_for_feedback_custom
          AUTOMATED_FOR_FEEDBACK_NPS = :automated_for_feedback_nps
          AUTOMATED_FOR_FORM = :automated_for_form
          AUTOMATED_FOR_FORM_BUFFER = :automated_for_form_buffer
          AUTOMATED_FOR_FORM_DRAFT = :automated_for_form_draft
          AUTOMATED_FOR_FORM_LEGACY = :automated_for_form_legacy
          AUTOMATED_FOR_LEADFLOW = :automated_for_leadflow
          AUTOMATED_FOR_TICKET = :automated_for_ticket
          BATCH = :batch
          BLOG_ARTICLE_INSTANCE_LAYOUT = :blog_article_instance_layout
          BLOG_ARTICLE_LISTING = :blog_article_listing
          BLOG_AUTHOR_DETAIL = :blog_author_detail
          BLOG_EMAIL = :blog_email
          BLOG_EMAIL_CHILD = :blog_email_child
          CASE_STUDY = :case_study
          CASE_STUDY_INSTANCE_LAYOUT = :case_study_instance_layout
          CASE_STUDY_LISTING = :case_study_listing
          DISCARDABLE_STUB = :discardable_stub
          IMPORTED_BLOG_POST = :imported_blog_post
          KB_404_PAGE = :kb_404_page
          KB_ARTICLE_INSTANCE_LAYOUT = :kb_article_instance_layout
          KB_LISTING = :kb_listing
          KB_SEARCH_RESULTS = :kb_search_results
          KB_SUPPORT_FORM = :kb_support_form
          LANDING_PAGE = :landing_page
          LEGACY_BLOG_POST = :legacy_blog_post
          LEGACY_PAGE = :legacy_page
          LOCALTIME = :localtime
          MARKETING_SINGLE_SEND_API = :marketing_single_send_api
          MEMBERSHIP_EMAIL_VERIFICATION = :membership_email_verification
          MEMBERSHIP_FOLLOW_UP = :membership_follow_up
          MEMBERSHIP_OTP_LOGIN = :membership_otp_login
          MEMBERSHIP_PASSWORD_RESET = :membership_password_reset
          MEMBERSHIP_PASSWORD_SAVED = :membership_password_saved
          MEMBERSHIP_PASSWORDLESS_AUTH = :membership_passwordless_auth
          MEMBERSHIP_REGISTRATION = :membership_registration
          MEMBERSHIP_REGISTRATION_FOLLOW_UP = :membership_registration_follow_up
          MEMBERSHIP_VERIFICATION = :membership_verification
          NORMAL_BLOG_POST = :normal_blog_post
          OPTIN_EMAIL = :optin_email
          OPTIN_FOLLOWUP_EMAIL = :optin_followup_email
          PAGE_INSTANCE_LAYOUT = :page_instance_layout
          PAGE_STUB = :page_stub
          PERFORMABLE_LANDING_PAGE = :performable_landing_page
          PERFORMABLE_LANDING_PAGE_CUTOVER = :performable_landing_page_cutover
          PODCAST_INSTANCE_LAYOUT = :podcast_instance_layout
          PODCAST_LISTING = :podcast_listing
          PORTAL_CONTENT = :portal_content
          RESUBSCRIBE_CONFIRMATION_EMAIL = :resubscribe_confirmation_email
          RESUBSCRIBE_EMAIL = :resubscribe_email
          RSS_TO_EMAIL = :rss_to_email
          RSS_TO_EMAIL_CHILD = :rss_to_email_child
          SCP_INSTANCE_LAYOUT_PAGE = :scp_instance_layout_page
          SCP_STATIC_PAGE = :scp_static_page
          SINGLE_SEND_API = :single_send_api
          SITE_PAGE = :site_page
          SMTP_TOKEN = :smtp_token
          STAGED_PAGE = :staged_page
          TICKET_CLOSED_KICKBACK_EMAIL = :ticket_closed_kickback_email
          TICKET_OPENED_KICKBACK_EMAIL = :ticket_opened_kickback_email
          UNKNOWN = :UNKNOWN
          UNSUBSCRIBE_CONFIRMATION_EMAIL = :unsubscribe_confirmation_email
          WEB_INTERACTIVE = :web_interactive

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
