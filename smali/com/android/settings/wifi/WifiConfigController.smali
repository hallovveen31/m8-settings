.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/htc/widget/AdapterView$OnItemSelectedListener;


# static fields
.field protected static final CW_STATE_IDLE:I = 0x0

.field protected static final CW_STATE_REGISTERING:I = 0x1

.field protected static final CW_STATE_REGISTER_FAILED:I = 0x3

.field protected static final CW_STATE_REGISTER_SUC:I = 0x2

.field protected static final CW_STATE_UNKNOWN:I = -0x1

.field protected static final CW_STATE_UNREGISTERING:I = 0x4

.field protected static final CW_STATE_UNRIGISTERING_SUC:I = 0x5

.field protected static final CW_STATE_UNRIGISTER_FAILED:I = 0x6

.field private static final DHCP:I = 0x0

.field private static final EAP_AKA:Ljava/lang/String; = "AKA"

.field private static final EAP_FAST:Ljava/lang/String; = "FAST"

.field private static final EAP_LEAP:Ljava/lang/String; = "LEAP"

.field private static final EAP_PEAP:Ljava/lang/String; = "PEAP"

.field private static final EAP_PWD:Ljava/lang/String; = "PWD"

.field private static final EAP_SIM:Ljava/lang/String; = "SIM"

.field private static final EAP_TLS:Ljava/lang/String; = "TLS"

.field private static final EAP_TTLS:Ljava/lang/String; = "TTLS"

.field private static final KEYSTORE_SPACE:Ljava/lang/String; = "keystore://"

.field private static final MAX_BLOCK_NOTIFY_NUMBER:I = 0x14

.field static final PHASE2_GTC:I = 0x4

.field static final PHASE2_MSCHAP:I = 0x2

.field static final PHASE2_MSCHAPV2:I = 0x3

.field static final PHASE2_NONE:I = 0x0

.field static final PHASE2_PAP:I = 0x1

.field private static final PHASE2_PREFIX:Ljava/lang/String; = "auth="

.field public static final PROXY_NONE:I = 0x0

.field public static final PROXY_STATIC:I = 0x1

.field private static final STATIC_IP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiConfigController"

.field public static final WIFI_EAP_METHOD_AKA:I = 0x5

.field public static final WIFI_EAP_METHOD_FAST:I = 0x7

.field public static final WIFI_EAP_METHOD_LEAP:I = 0x6

.field public static final WIFI_EAP_METHOD_PEAP:I = 0x0

.field public static final WIFI_EAP_METHOD_PWD:I = 0x3

.field public static final WIFI_EAP_METHOD_SIM:I = 0x4

.field public static final WIFI_EAP_METHOD_TLS:I = 0x1

.field public static final WIFI_EAP_METHOD_TTLS:I = 0x2

.field public static final WIFI_PEAP_PHASE2_GTC:I = 0x2

.field public static final WIFI_PEAP_PHASE2_MSCHAPV2:I = 0x1

.field public static final WIFI_PEAP_PHASE2_NONE:I

.field private static mCWstate:I

.field private static final unspecifiedCertIndex:I


# instance fields
.field private final PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

.field private mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

.field private mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

.field private mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

.field private mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

.field private mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

.field private mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

.field private mEdit:I

.field private mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mEncryptionText:Landroid/widget/TextView;

.field private mGatewayView:Landroid/widget/TextView;

.field private final mInXlSetupWizard:Z

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mModified:Z

.field private mNeedReloadCertificate:Z

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

.field private mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

.field private mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

.field private mSsidView:Landroid/widget/TextView;

.field private final mTextViewChangedHandler:Landroid/os/Handler;

.field private final mView:Landroid/view/View;

.field private mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private unspecifiedCert:Ljava/lang/String;

.field private wepkeyindex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 107
    const/4 v0, -0x1

    sput v0, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;I)V
    .locals 19
    .parameter "parent"
    .parameter "view"
    .parameter "accessPoint"
    .parameter "edit"

    .prologue
    .line 254
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const-string v15, "unspecified"

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 219
    sget-object v15, Landroid/net/wifi/WifiConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 220
    sget-object v15, Landroid/net/wifi/WifiConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 221
    new-instance v15, Landroid/net/LinkProperties;

    invoke-direct {v15}, Landroid/net/LinkProperties;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 227
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 231
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mModified:Z

    .line 1562
    new-instance v15, Lcom/android/settings/wifi/WifiConfigController$2;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    .line 255
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 256
    move-object/from16 v0, p1

    instance-of v15, v0, Lcom/android/settings/wifi/WifiConfigUiForSetupWizardXL;

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    .line 258
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 259
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 260
    if-nez p3, :cond_2

    const/4 v15, 0x0

    :goto_0
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 262
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    .line 264
    new-instance v15, Landroid/os/Handler;

    invoke-direct {v15}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 265
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v15}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 266
    .local v4, context:Landroid/content/Context;
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    .line 267
    .local v10, resources:Landroid/content/res/Resources;
    const-string v15, "wifi"

    invoke-virtual {v4, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 269
    new-instance v15, Landroid/widget/ArrayAdapter;

    const v16, 0x2090008

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080021

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v4, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 272
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    const v16, 0x2090007

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 274
    new-instance v15, Landroid/widget/ArrayAdapter;

    const v16, 0x2090008

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f080022

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v17

    move/from16 v0, v16

    move-object/from16 v1, v17

    invoke-direct {v15, v4, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 277
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    const v16, 0x2090007

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 279
    const v15, 0x7f0c0d73

    invoke-virtual {v4, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 280
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902a5

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 281
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 282
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f09029e

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    .line 283
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const v16, 0x7f080023

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const v16, 0x7f080024

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 290
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v15, :cond_5

    .line 291
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d42

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 292
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f090286

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 293
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f090287

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    .line 295
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 297
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v15, :cond_3

    .line 298
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f09028d

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 299
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f090293

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 301
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v16, 0x7f080013

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 312
    :goto_1
    sget-boolean v15, Lcom/android/settings/wifi/CustomUtil;->SET_DEFAULT_SECURITY_AS_WPA:Z

    if-eqz v15, :cond_0

    .line 313
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const/16 v16, 0x2

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 316
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 317
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 318
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bd

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 319
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bd

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902be

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 321
    .local v14, title:Lcom/htc/widget/HtcListItem2LineText;
    const v15, 0x7f0c0d54

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 322
    const v15, 0x2030037

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 323
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 324
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bf

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 325
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d91

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 466
    .end local v14           #title:Lcom/htc/widget/HtcListItem2LineText;
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d93

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 474
    :goto_3
    return-void

    .line 260
    .end local v4           #context:Landroid/content/Context;
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_2
    move-object/from16 v0, p3

    iget v15, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    goto/16 :goto_0

    .line 303
    .restart local v4       #context:Landroid/content/Context;
    .restart local v10       #resources:Landroid/content/res/Resources;
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f09025a

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 304
    sget-boolean v15, Lcom/android/settings/wifi/CustomUtil;->ENABLE_WAPI_FEATURE:Z

    if-eqz v15, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v16, 0x7f080075

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto/16 :goto_1

    .line 307
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    const v16, 0x7f080012

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    goto/16 :goto_1

    .line 329
    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 331
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f090285

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 333
    .local v5, group:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v13

    .line 334
    .local v13, state:Landroid/net/NetworkInfo$DetailedState;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v8

    .line 335
    .local v8, level:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-nez v15, :cond_9

    .line 336
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v15

    if-nez v15, :cond_e

    .line 337
    if-eqz v13, :cond_6

    .line 338
    const v15, 0x7f0c0d65

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Lcom/android/settings/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 339
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 342
    :cond_6
    const/4 v15, -0x1

    if-eq v8, v15, :cond_7

    .line 343
    const v15, 0x7f080019

    invoke-virtual {v10, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    .line 344
    .local v12, signal:[Ljava/lang/String;
    const v15, 0x7f0c0d64

    aget-object v16, v12, v8

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 345
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 348
    .end local v12           #signal:[Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v7

    .line 349
    .local v7, info:Landroid/net/wifi/WifiInfo;
    if-eqz v7, :cond_8

    .line 350
    const v15, 0x7f0c0d66

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "Mbps"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 354
    :cond_8
    const v15, 0x7f0c0d63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 355
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v15, v15, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_9

    .line 356
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 364
    .end local v7           #info:Landroid/net/wifi/WifiInfo;
    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->enableBlockOpenNetworkNotify()Z

    move-result v15

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v15, v15, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v15, :cond_b

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v15, v15, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v15, :cond_b

    .line 366
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902cd

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcRimButton;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    .line 367
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    if-eqz v15, :cond_a

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v15, v15, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v15, :cond_f

    .line 369
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    const v16, 0x7f0c07e8

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 373
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcRimButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    :cond_a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902cc

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 376
    .local v9, open_networks:Landroid/view/View;
    if-eqz v9, :cond_b

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 379
    .end local v9           #open_networks:Landroid/view/View;
    :cond_b
    const/4 v11, 0x0

    .line 380
    .local v11, showAdvancedFields:Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v15, v15, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-eqz v15, :cond_12

    .line 381
    :cond_c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    .line 382
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v16, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 383
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 384
    const/4 v11, 0x1

    .line 389
    :goto_6
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v15}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_d
    :goto_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_11

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    .line 390
    .local v2, a:Ljava/net/InetAddress;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-nez v15, :cond_d

    .line 391
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 392
    const v15, 0x7f0c0d67

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v5, v15, v1}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_7

    .line 359
    .end local v2           #a:Ljava/net/InetAddress;
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v11           #showAdvancedFields:Z
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showErrorMessage()V

    goto/16 :goto_4

    .line 371
    :cond_f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    const v16, 0x7f0c07e7

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    goto/16 :goto_5

    .line 386
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v11       #showAdvancedFields:Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto :goto_6

    .line 396
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_11
    iget-object v15, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v16, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    move-object/from16 v0, v16

    if-ne v15, v0, :cond_17

    .line 397
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 398
    const/4 v11, 0x1

    .line 404
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_12
    :goto_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v15, v15, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v15

    if-nez v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v15

    if-nez v15, :cond_13

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-eqz v15, :cond_16

    .line 405
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 406
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 407
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 408
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v15

    if-eqz v15, :cond_14

    .line 409
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/settings/wifi/WifiConfigController;->addLine(Landroid/view/ViewGroup;)V

    .line 411
    :cond_14
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bd

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 412
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bd

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902be

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/htc/widget/HtcListItem2LineText;

    .line 414
    .restart local v14       #title:Lcom/htc/widget/HtcListItem2LineText;
    const v15, 0x7f0c0d54

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 415
    const v15, 0x2030037

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 416
    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 417
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902bf

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 418
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    if-eqz v11, :cond_15

    .line 420
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 421
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902c0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    .line 424
    :cond_15
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_16

    .line 425
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v15

    invoke-virtual {v15}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v15

    sget-object v16, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    move-object/from16 v0, v16

    if-eq v15, v0, :cond_16

    .line 426
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 432
    .end local v14           #title:Lcom/htc/widget/HtcListItem2LineText;
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v15

    if-eqz v15, :cond_18

    .line 433
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d91

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 400
    .restart local v3       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_8

    .line 435
    .end local v3           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_18
    if-nez v13, :cond_19

    const/4 v15, -0x1

    if-ne v8, v15, :cond_1a

    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v15

    if-nez v15, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-eqz v15, :cond_1c

    .line 436
    :cond_1a
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d8d

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 449
    :cond_1b
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v15, v15, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->isReadOnly()Z

    move-result v15

    if-nez v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v15, v15, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v15}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v15

    if-nez v15, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v15

    if-nez v15, :cond_1

    .line 453
    if-eqz v13, :cond_1f

    sget-object v15, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v13, v15, :cond_1f

    sget-boolean v15, Lcom/android/settings/wifi/CustomUtil;->DISCONNECT_NETWORK:Z

    if-nez v15, :cond_1f

    .line 454
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c00e4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 455
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c07d0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 438
    :cond_1c
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v15}, Lcom/android/settings/wifi/AccessPoint;->checkCTSSID()Z

    move-result v15

    if-eqz v15, :cond_1e

    .line 439
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isCwRegistrable()Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 440
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c07aa

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(I)V

    goto :goto_9

    .line 442
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->isCwUnregistrable()Z

    move-result v15

    if-eqz v15, :cond_1b

    .line 443
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c07ab

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(I)V

    goto/16 :goto_9

    .line 447
    :cond_1e
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v16, 0x7f0902a4

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_9

    .line 458
    :cond_1f
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c0d8f

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v16, 0x7f0c07d1

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)Lcom/htc/widget/HtcCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    return-object v0
.end method

.method private addLine(Landroid/view/ViewGroup;)V
    .locals 4
    .parameter "group"

    .prologue
    .line 484
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 485
    .local v0, row:Landroid/view/View;
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 486
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 5
    .parameter "group"
    .parameter "name"
    .parameter "value"

    .prologue
    const v4, 0x7f0900a2

    .line 477
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 478
    .local v0, row:Landroid/view/View;
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, p2}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 479
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/htc/widget/HtcListItem2LineText;

    invoke-virtual {v1, p3}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 481
    return-void
.end method

.method private checkEapIfAppropriate()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1518
    sget-boolean v3, Lcom/android/settings/wifi/CustomUtil;->CHECK_EAP_IF_APPROPRIATE:Z

    if-nez v3, :cond_1

    .line 1533
    :cond_0
    :goto_0
    return v1

    .line 1519
    :cond_1
    iget v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 1521
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    .line 1522
    .local v0, eapType:Ljava/lang/String;
    const-string v3, "TLS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1524
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v3}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    .line 1525
    goto :goto_0

    .line 1527
    :cond_3
    const-string v3, "PEAP"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "TTLS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "PWD"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1528
    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_0

    :cond_5
    move v1, v2

    .line 1529
    goto :goto_0
.end method

.method private checkWepIfAppropriate()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1537
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eq v1, v0, :cond_0

    .line 1539
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/AccessPoint;->isValidWepPassword(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private findEapIndex(Ljava/lang/String;)I
    .locals 7
    .parameter "eapType"

    .prologue
    const/4 v5, 0x0

    .line 1184
    if-nez p1, :cond_1

    move v2, v5

    .line 1196
    :cond_0
    :goto_0
    return v2

    .line 1186
    :cond_1
    const/4 v2, 0x0

    .line 1187
    .local v2, index:I
    sget-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v0, v1

    .line 1189
    .local v4, type:Ljava/lang/String;
    if-eqz v4, :cond_2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1193
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 1187
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #type:Ljava/lang/String;
    :cond_3
    move v2, v5

    .line 1196
    goto :goto_0
.end method

.method private getEapMethod()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1166
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1167
    .local v0, eapSpinner:Lcom/htc/widget/HtcSpinner;
    :goto_0
    if-eqz v0, :cond_1

    .line 1168
    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1170
    :goto_1
    return-object v1

    .line 1166
    .end local v0           #eapSpinner:Lcom/htc/widget/HtcSpinner;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    goto :goto_0

    .line 1170
    .restart local v0       #eapSpinner:Lcom/htc/widget/HtcSpinner;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getPhase2MethodIndex()I
    .locals 2

    .prologue
    .line 1174
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    .line 1175
    .local v0, phase2Spinner:Lcom/htc/widget/HtcSpinner;
    :goto_0
    if-eqz v0, :cond_1

    .line 1176
    invoke-virtual {v0}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 1178
    :goto_1
    return v1

    .line 1174
    .end local v0           #phase2Spinner:Lcom/htc/widget/HtcSpinner;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    goto :goto_0

    .line 1178
    .restart local v0       #phase2Spinner:Lcom/htc/widget/HtcSpinner;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private initSpinner(Lcom/htc/widget/HtcSpinner;I)V
    .locals 4
    .parameter "spinner"
    .parameter "resId"

    .prologue
    .line 1445
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1446
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x2090008

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1449
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x2090007

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1450
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1451
    return-void
.end method

.method private initSpinner(Lcom/htc/widget/HtcSpinner;[Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "array"

    .prologue
    .line 1454
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1455
    .local v1, context:Landroid/content/Context;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x2090008

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1458
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x2090007

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1459
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1460
    return-void
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 11

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 753
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->clear()V

    .line 754
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_0

    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    :goto_0
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 758
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$IpAssignment;->STATIC:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    if-ne v7, v10, :cond_1

    .line 759
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/LinkProperties;)I

    move-result v6

    .line 760
    .local v6, result:I
    if-eqz v6, :cond_1

    move v7, v8

    .line 788
    .end local v6           #result:I
    :goto_1
    return v7

    .line 754
    :cond_0
    sget-object v7, Landroid/net/wifi/WifiConfiguration$IpAssignment;->DHCP:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    goto :goto_0

    .line 765
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    if-ne v7, v9, :cond_3

    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    :goto_2
    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 769
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v10, Landroid/net/wifi/WifiConfiguration$ProxySettings;->STATIC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    .line 770
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 771
    .local v2, host:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 772
    .local v4, portStr:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 773
    .local v1, exclusionList:Ljava/lang/String;
    const/4 v3, 0x0

    .line 774
    .local v3, port:I
    const/4 v6, 0x0

    .line 776
    .restart local v6       #result:I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 777
    invoke-static {v2, v4, v1}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    .line 781
    :goto_3
    if-nez v6, :cond_4

    .line 782
    new-instance v5, Landroid/net/ProxyProperties;

    invoke-direct {v5, v2, v3, v1}, Landroid/net/ProxyProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 783
    .local v5, proxyProperties:Landroid/net/ProxyProperties;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->setHttpProxy(Landroid/net/ProxyProperties;)V

    .end local v1           #exclusionList:Ljava/lang/String;
    .end local v2           #host:Ljava/lang/String;
    .end local v3           #port:I
    .end local v4           #portStr:Ljava/lang/String;
    .end local v5           #proxyProperties:Landroid/net/ProxyProperties;
    .end local v6           #result:I
    :cond_2
    move v7, v9

    .line 788
    goto :goto_1

    .line 765
    :cond_3
    sget-object v7, Landroid/net/wifi/WifiConfiguration$ProxySettings;->NONE:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    goto :goto_2

    .line 778
    .restart local v1       #exclusionList:Ljava/lang/String;
    .restart local v2       #host:Ljava/lang/String;
    .restart local v3       #port:I
    .restart local v4       #portStr:Ljava/lang/String;
    .restart local v6       #result:I
    :catch_0
    move-exception v0

    .line 779
    .local v0, e:Ljava/lang/NumberFormatException;
    const v6, 0x7f0c0bee

    goto :goto_3

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_4
    move v7, v8

    .line 785
    goto :goto_1
.end method

.method private isCwRegistrable()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 1489
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1499
    :cond_0
    :goto_0
    return v0

    .line 1493
    :cond_1
    const-string v1, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[C+W] mCWstate = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    if-eqz v1, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    sget v1, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 1497
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isCwUnregistrable()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1503
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 1513
    :cond_0
    :goto_0
    return v0

    .line 1507
    :cond_1
    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[C+W] mCWstate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    if-eq v2, v1, :cond_2

    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    sget v2, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    :cond_2
    move v0, v1

    .line 1511
    goto :goto_0
.end method

.method private loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V
    .locals 8
    .parameter "spinner"
    .parameter "prefix"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1406
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 1408
    .local v3, context:Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v4

    const/16 v5, 0x3f2

    invoke-virtual {v4, p2, v5}, Landroid/security/KeyStore;->saw(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1409
    .local v2, certs:[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-nez v4, :cond_1

    .line 1410
    :cond_0
    new-array v2, v7, [Ljava/lang/String;

    .end local v2           #certs:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v2, v6

    .line 1418
    .restart local v2       #certs:[Ljava/lang/String;
    :goto_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v4, 0x2090008

    invoke-direct {v0, v3, v4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1420
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v4, 0x2090007

    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1421
    invoke-virtual {p1, v0}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1422
    return-void

    .line 1412
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    array-length v4, v2

    add-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Ljava/lang/String;

    .line 1413
    .local v1, array:[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    aput-object v4, v1, v6

    .line 1414
    array-length v4, v2

    invoke-static {v2, v6, v1, v7, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1415
    move-object v2, v1

    goto :goto_0
.end method

.method static requireKeyStore(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "config"

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1301
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1302
    return-void
.end method

.method public static setCWstate(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1715
    sput p0, Lcom/android/settings/wifi/WifiConfigController;->mCWstate:I

    .line 1716
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1291
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1292
    return-void
.end method

.method private setCertificate(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "spinner"
    .parameter "prefix"
    .parameter "cert"

    .prologue
    .line 1425
    if-eqz p3, :cond_0

    invoke-virtual {p3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1426
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1428
    :cond_0
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 1311
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1312
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1313
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 1305
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1306
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1307
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1308
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1283
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1284
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1285
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1287
    return-void
.end method

.method private setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V
    .locals 3
    .parameter "spinner"
    .parameter "value"

    .prologue
    .line 1431
    if-eqz p2, :cond_0

    .line 1433
    invoke-virtual {p1}, Lcom/htc/widget/HtcSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1434
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 1435
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1436
    invoke-virtual {p1, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1441
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1           #i:I
    :cond_0
    return-void

    .line 1434
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1       #i:I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1296
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1297
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 6
    .parameter "eapMethod"

    .prologue
    const v5, 0x7f0902c9

    const v4, 0x7f0902c4

    const v3, 0x7f0902b3

    const/4 v2, 0x0

    .line 1222
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902ae

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1228
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1229
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f090292

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1230
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    packed-switch p1, :pswitch_data_0

    .line 1280
    :goto_0
    return-void

    .line 1235
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1236
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1237
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1238
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 1241
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0902c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1243
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1244
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_0

    .line 1248
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_0

    .line 1249
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1250
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1251
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1253
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1256
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_0

    .line 1260
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v0, v1, :cond_1

    .line 1261
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1263
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1265
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1266
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1267
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1268
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_0

    .line 1272
    :pswitch_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1273
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1274
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1275
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1276
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1277
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    goto/16 :goto_0

    .line 1233
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method private showErrorMessage()V
    .locals 3

    .prologue
    const v2, 0x7f0902ac

    .line 882
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f09001e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 883
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isRetryPassword()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 884
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c07fe

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 888
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isInvalidPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0c085f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method private showIpConfigFields()V
    .locals 11

    .prologue
    const v10, 0x7f0902a6

    const/4 v9, 0x0

    .line 1316
    const/4 v0, 0x0

    .line 1318
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902a4

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1320
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v7, v7, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v7, :cond_2

    .line 1321
    :cond_1
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v7}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1324
    :cond_2
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v7}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    .line 1325
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 1326
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v7, :cond_3

    .line 1327
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902a7

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1328
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1329
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902a8

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1330
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1331
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902a9

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1333
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1334
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902aa

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1335
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1336
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v8, 0x7f0902ab

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1337
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1339
    :cond_3
    if-eqz v0, :cond_8

    .line 1340
    iget-object v5, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    .line 1341
    .local v5, linkProperties:Landroid/net/LinkProperties;
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1342
    .local v3, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1343
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 1344
    .local v4, linkAddress:Landroid/net/LinkAddress;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1345
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1349
    .end local v4           #linkAddress:Landroid/net/LinkAddress;
    :cond_4
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/RouteInfo;

    .line 1350
    .local v6, route:Landroid/net/RouteInfo;
    invoke-virtual {v6}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1351
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v8

    invoke-virtual {v8}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    .end local v6           #route:Landroid/net/RouteInfo;
    :cond_6
    invoke-virtual {v5}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1357
    .local v1, dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1358
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1360
    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1361
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/net/InetAddress;

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    .end local v1           #dnsIterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v5           #linkProperties:Landroid/net/LinkProperties;
    :cond_8
    :goto_0
    return-void

    .line 1365
    :cond_9
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showProxyFields()V
    .locals 8

    .prologue
    const v7, 0x7f0902a0

    const v6, 0x7f09029f

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 1370
    const/4 v0, 0x0

    .line 1372
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f09029c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    .line 1375
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1378
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v2}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    .line 1379
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1380
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1381
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v2, :cond_3

    .line 1382
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0902a1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1383
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1384
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0902a2

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1385
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1386
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0902a3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1387
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1389
    :cond_3
    if-eqz v0, :cond_4

    .line 1390
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getHttpProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 1391
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_4

    .line 1392
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1393
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1394
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1401
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_4
    :goto_0
    return-void

    .line 1398
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecurityFields()V
    .locals 12

    .prologue
    .line 891
    iget-boolean v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mInXlSetupWizard:Z

    if-eqz v9, :cond_1

    .line 893
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v9

    check-cast v9, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    iget v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v9, v10, v11}, Lcom/android/settings/wifi/WifiSettingsForSetupWizardXL;->initSecurityFields(Landroid/view/View;I)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1163
    :cond_0
    :goto_0
    return-void

    .line 898
    :cond_1
    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v9, :cond_2

    .line 899
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090290

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 900
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 901
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ca

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 902
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 903
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 907
    :cond_2
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090290

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 908
    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_7

    .line 909
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ca

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 923
    :cond_3
    :goto_1
    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x5

    if-ne v9, v10, :cond_9

    .line 924
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090292

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 926
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    if-nez v9, :cond_4

    .line 927
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902bb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    .line 928
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902bc

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    .line 930
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "WAPIAS_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 931
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "WAPIUSR_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 934
    :cond_4
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v9

    invoke-virtual {v9}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v9

    sget-object v10, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v9, v10, :cond_5

    .line 935
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 956
    :cond_5
    :goto_2
    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_b

    .line 957
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 971
    :cond_6
    :goto_3
    iget v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v10, 0x3

    if-eq v9, v10, :cond_c

    .line 972
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090295

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 973
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 974
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 911
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ca

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 912
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902cb

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    .line 913
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 915
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    const v10, 0x7f080078

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 917
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->wepkeyindex:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    .line 918
    sget-boolean v9, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v9, :cond_8

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " AccessPoint wep index="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->wepkeyindex:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :cond_8
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->wepkeyindex:I

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_1

    .line 940
    :cond_9
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090292

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 941
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ba

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 942
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090271

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcAutoCompleteTextView;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    .line 943
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcAutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 944
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b9

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 945
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090289

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 946
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 948
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_a

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_a

    .line 949
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v10, 0x7f0c0d72

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    goto/16 :goto_2

    .line 950
    :cond_a
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 951
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const v10, 0x7f0c00b5

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcAutoCompleteTextView;->setHint(I)V

    goto/16 :goto_2

    .line 959
    :cond_b
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 960
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/htc/widget/HtcListItem2LineText;

    .line 961
    .local v8, title:Lcom/htc/widget/HtcListItem2LineText;
    const v9, 0x7f0c05bc

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    .line 962
    const v9, 0x2030037

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryTextStyle(I)V

    .line 963
    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 964
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-nez v9, :cond_6

    .line 965
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 966
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b7

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 967
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 977
    .end local v8           #title:Lcom/htc/widget/HtcListItem2LineText;
    :cond_c
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090295

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 979
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v9

    if-eqz v9, :cond_11

    .line 980
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 981
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 987
    :goto_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902bf

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/htc/widget/HtcCheckBox;

    .line 988
    .local v0, checkbox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 989
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c6

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_d
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-nez v9, :cond_15

    .line 993
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090296

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    .line 994
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 995
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090297

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    .line 996
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090298

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    .line 997
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 998
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f090299

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    .line 999
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f09029a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 1000
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v9, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1001
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f09029b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 1004
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c3

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1005
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcSpinner;->setOnItemSelectedListener(Lcom/htc/widget/AdapterView$OnItemSelectedListener;)V

    .line 1006
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c5

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    .line 1009
    sget-boolean v9, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v9, :cond_12

    .line 1010
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902af

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b2

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcCheckBox;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    .line 1012
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b0

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/htc/widget/HtcSpinner;

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1013
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    const v10, 0x7f08006e

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 1014
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const v10, 0x7f08006d

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 1015
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const v10, 0x7f08006d

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;I)V

    .line 1016
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v9, :cond_e

    .line 1017
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902b1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mCheckboxHitAreaListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1018
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v9, p0}, Lcom/htc/widget/HtcCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1047
    :cond_e
    :goto_5
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "CACERT_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1048
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "USRPKEY_"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1051
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_14

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_14

    .line 1052
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    iget-object v5, v9, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1053
    .local v5, enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v1

    .line 1054
    .local v1, eapMethod:I
    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v7

    .line 1057
    .local v7, phase2Method:I
    const/4 v9, -0x1

    if-eq v1, v9, :cond_f

    .line 1058
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    sget-object v10, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1059
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    sget-object v10, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    aget-object v10, v10, v1

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1061
    :cond_f
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isCmccSku()Z

    move-result v9

    if-eqz v9, :cond_13

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    .line 1062
    .local v3, eapSpinner:Lcom/htc/widget/HtcSpinner;
    :goto_6
    invoke-virtual {v3}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v2

    .line 1063
    .local v2, eapMethodIndex:I
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1064
    packed-switch v1, :pswitch_data_0

    .line 1085
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1086
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v9, v7}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1089
    :goto_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1090
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1091
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1092
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    .end local v1           #eapMethod:I
    .end local v2           #eapMethodIndex:I
    .end local v3           #eapSpinner:Lcom/htc/widget/HtcSpinner;
    .end local v5           #enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v7           #phase2Method:I
    :goto_8
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 1104
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/wifi/CustomUtil;->isSimSsid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1105
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "SIM"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1106
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "SIM"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1109
    :cond_10
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v9, v9, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v9}, Lcom/android/settings/wifi/CustomUtil;->isAkaSsid(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1110
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "AKA"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1111
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v10, "AKA"

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 983
    .end local v0           #checkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_11
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902ad

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 984
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902c1

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1031
    .restart local v0       #checkbox:Lcom/htc/widget/HtcCheckBox;
    :cond_12
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->getEapTypeSupportList()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;[Ljava/lang/String;)V

    .line 1032
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-static {}, Lcom/android/settings/wifi/CustomUtil;->getEapTypeSupportList()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v9, v10}, Lcom/android/settings/wifi/WifiConfigController;->initSpinner(Lcom/htc/widget/HtcSpinner;[Ljava/lang/String;)V

    .line 1033
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v10, 0x7f0902af

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1061
    .restart local v1       #eapMethod:I
    .restart local v5       #enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    .restart local v7       #phase2Method:I
    :cond_13
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    goto/16 :goto_6

    .line 1066
    .restart local v2       #eapMethodIndex:I
    .restart local v3       #eapSpinner:Lcom/htc/widget/HtcSpinner;
    :pswitch_0
    packed-switch v7, :pswitch_data_1

    .line 1080
    :pswitch_1
    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid phase 2 method "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1068
    :pswitch_2
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1069
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_7

    .line 1072
    :pswitch_3
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1073
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_7

    .line 1076
    :pswitch_4
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1077
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_7

    .line 1096
    .end local v1           #eapMethod:I
    .end local v2           #eapMethodIndex:I
    .end local v3           #eapSpinner:Lcom/htc/widget/HtcSpinner;
    .end local v5           #enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v7           #phase2Method:I
    :cond_14
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1097
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1098
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1099
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    .line 1100
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccPhase2Spinner:Lcom/htc/widget/HtcSpinner;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/htc/widget/HtcSpinner;->setSelection(I)V

    goto/16 :goto_8

    .line 1146
    :cond_15
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getEapMethod()Ljava/lang/String;

    move-result-object v4

    .line 1147
    .local v4, eapType:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/android/settings/wifi/WifiConfigController;->findEapIndex(Ljava/lang/String;)I

    move-result v6

    .line 1148
    .local v6, index:I
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_0

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1066
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateEAPFields()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const v4, 0x7f0902c6

    const v3, 0x7f0902af

    const/16 v2, 0x8

    .line 1653
    sget-boolean v1, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v1, :cond_0

    .line 1654
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getEapMethod()Ljava/lang/String;

    move-result-object v0

    .line 1655
    .local v0, eapType:Ljava/lang/String;
    const-string v1, "LEAP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1658
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1659
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1670
    .end local v0           #eapType:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1660
    .restart local v0       #eapType:Ljava/lang/String;
    :cond_1
    const-string v1, "FAST"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1663
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1664
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1666
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1667
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private validateIpConfigFields(Landroid/net/LinkProperties;)I
    .locals 13
    .parameter "linkProperties"

    .prologue
    .line 793
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 878
    :goto_0
    return v10

    .line 795
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 796
    .local v7, ipAddr:Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    const v10, 0x7f0c0da2

    goto :goto_0

    .line 798
    :cond_1
    const/4 v6, 0x0

    .line 800
    .local v6, inetAddr:Ljava/net/InetAddress;
    :try_start_0
    invoke-static {v7}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 805
    const/4 v9, -0x1

    .line 807
    .local v9, networkPrefixLength:I
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 808
    if-ltz v9, :cond_2

    const/16 v10, 0x20

    if-le v9, v10, :cond_3

    .line 809
    :cond_2
    const v10, 0x7f0c0da5

    goto :goto_0

    .line 801
    .end local v9           #networkPrefixLength:I
    :catch_0
    move-exception v3

    .line 802
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0c0da2

    goto :goto_0

    .line 811
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .restart local v9       #networkPrefixLength:I
    :cond_3
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 822
    :goto_1
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 823
    .local v4, gateway:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 826
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mModified:Z

    if-nez v10, :cond_6

    .line 829
    :try_start_2
    invoke-static {v6, v9}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v8

    .line 830
    .local v8, netPart:Ljava/net/InetAddress;
    invoke-virtual {v8}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 831
    .local v0, addr:[B
    array-length v10, v0

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x1

    aput-byte v11, v0, v10

    .line 832
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 833
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mModified:Z
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_5

    .line 850
    .end local v0           #addr:[B
    .end local v8           #netPart:Ljava/net/InetAddress;
    :goto_2
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 851
    .local v1, dns:Ljava/lang/String;
    const/4 v2, 0x0

    .line 853
    .local v2, dnsAddr:Ljava/net/InetAddress;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 855
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mModified:Z

    if-nez v10, :cond_8

    .line 856
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0da7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 869
    :goto_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->length()I

    move-result v10

    if-lez v10, :cond_4

    .line 870
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 872
    :try_start_3
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v2

    .line 876
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    .line 878
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 812
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v4           #gateway:Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 814
    .local v3, e:Ljava/lang/NumberFormatException;
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mModified:Z

    if-nez v10, :cond_5

    .line 815
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0c0dad

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 818
    :cond_5
    const v10, 0x7f0c0da5

    goto/16 :goto_0

    .line 838
    .end local v3           #e:Ljava/lang/NumberFormatException;
    .restart local v4       #gateway:Ljava/lang/String;
    :cond_6
    const v10, 0x7f0c0da3

    goto/16 :goto_0

    .line 841
    :cond_7
    const/4 v5, 0x0

    .line 843
    .local v5, gatewayAddr:Ljava/net/InetAddress;
    :try_start_4
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v5

    .line 847
    new-instance v10, Landroid/net/RouteInfo;

    invoke-direct {v10, v5}, Landroid/net/RouteInfo;-><init>(Ljava/net/InetAddress;)V

    invoke-virtual {p1, v10}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)V

    goto :goto_2

    .line 844
    :catch_2
    move-exception v3

    .line 845
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0c0da3

    goto/16 :goto_0

    .line 858
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    .end local v5           #gatewayAddr:Ljava/net/InetAddress;
    .restart local v1       #dns:Ljava/lang/String;
    .restart local v2       #dnsAddr:Ljava/net/InetAddress;
    :cond_8
    const v10, 0x7f0c0da4

    goto/16 :goto_0

    .line 862
    :cond_9
    :try_start_5
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v2

    .line 866
    invoke-virtual {p1, v2}, Landroid/net/LinkProperties;->addDns(Ljava/net/InetAddress;)V

    goto :goto_3

    .line 863
    :catch_3
    move-exception v3

    .line 864
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0c0da4

    goto/16 :goto_0

    .line 873
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_4
    move-exception v3

    .line 874
    .restart local v3       #e:Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0c0da4

    goto/16 :goto_0

    .line 835
    .end local v1           #dns:Ljava/lang/String;
    .end local v2           #dnsAddr:Ljava/net/InetAddress;
    .end local v3           #e:Ljava/lang/IllegalArgumentException;
    :catch_5
    move-exception v10

    goto/16 :goto_2

    .line 834
    :catch_6
    move-exception v10

    goto/16 :goto_2
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 1544
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1549
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 1554
    return-void
.end method

.method public certificatesIfReload()V
    .locals 2

    .prologue
    .line 1700
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    if-nez v0, :cond_0

    .line 1711
    :goto_0
    return-void

    .line 1702
    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 1703
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1704
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRCERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1710
    :cond_1
    :goto_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    goto :goto_0

    .line 1705
    :cond_2
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 1706
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1707
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    goto :goto_1
.end method

.method enableSubmitIfAppropriate()V
    .locals 7

    .prologue
    const v6, 0x7f0902b8

    const/16 v5, 0x8

    const/4 v4, 0x1

    .line 491
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v1

    .line 492
    .local v1, submit:Landroid/widget/Button;
    if-nez v1, :cond_0

    .line 540
    :goto_0
    return-void

    .line 494
    :cond_0
    const/4 v0, 0x0

    .line 495
    .local v0, shouldEnabled:Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/wifi/CustomUtil;->readOnlySSID(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_3
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_6

    :cond_4
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v2

    if-lt v2, v5, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->checkEapIfAppropriate()Z

    move-result v2

    if-nez v2, :cond_7

    .line 509
    :cond_6
    const/4 v0, 0x0

    .line 534
    :goto_1
    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 535
    const/4 v0, 0x1

    .line 539
    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 522
    :cond_7
    const/4 v0, 0x1

    .line 523
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v2, :cond_8

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v2, v4, :cond_8

    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->checkWepIfAppropriate()Z

    move-result v2

    if-nez v2, :cond_8

    .line 525
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 526
    const/4 v0, 0x0

    goto :goto_1

    .line 529
    :cond_8
    const/4 v0, 0x1

    .line 530
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 537
    :cond_9
    const/4 v0, 0x0

    goto :goto_2
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 15

    .prologue
    .line 543
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isEdit()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isError()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->is8021xEdit()Z

    move-result v11

    if-nez v11, :cond_0

    .line 544
    const/4 v3, 0x0

    .line 749
    :goto_0
    return-object v3

    .line 547
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 549
    .local v3, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v11, :cond_1

    .line 550
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 553
    const/4 v11, 0x1

    iput-boolean v11, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 561
    :goto_1
    iget v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v11, :pswitch_data_0

    .line 742
    const/4 v3, 0x0

    goto :goto_0

    .line 554
    :cond_1
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_2

    .line 555
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 558
    :cond_2
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v11, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto :goto_1

    .line 563
    :pswitch_0
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 745
    :cond_3
    :goto_2
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    .line 746
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->ipAssignment:Landroid/net/wifi/WifiConfiguration$IpAssignment;

    .line 747
    new-instance v11, Landroid/net/LinkProperties;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-direct {v11, v12}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->linkProperties:Landroid/net/LinkProperties;

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 568
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 569
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 570
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    if-eqz v11, :cond_4

    .line 571
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItemPosition()I

    move-result v11

    iput v11, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 573
    :cond_4
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 574
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v7

    .line 575
    .local v7, length:I
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 577
    .local v9, password:Ljava/lang/String;
    const/16 v11, 0xa

    if-eq v7, v11, :cond_5

    const/16 v11, 0x1a

    if-eq v7, v11, :cond_5

    const/16 v11, 0x3a

    if-ne v7, v11, :cond_6

    :cond_5
    const-string v11, "[0-9A-Fa-f]*"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 580
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    aput-object v9, v11, v12

    goto :goto_2

    .line 583
    :cond_6
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget v12, v3, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/16 v14, 0x22

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    goto/16 :goto_2

    .line 589
    .end local v7           #length:I
    .end local v9           #password:Ljava/lang/String;
    :pswitch_2
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 590
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v11

    if-eqz v11, :cond_3

    .line 591
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 592
    .restart local v9       #password:Ljava/lang/String;
    const-string v11, "[0-9A-Fa-f]{64}"

    invoke-virtual {v9, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 593
    iput-object v9, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 595
    :cond_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const/16 v12, 0x22

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_2

    .line 602
    .end local v9           #password:Ljava/lang/String;
    :pswitch_3
    sget-boolean v11, Lcom/android/settings/wifi/CustomUtil;->ENABLE_CCX_UI:Z

    if-eqz v11, :cond_e

    .line 604
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v11}, Lcom/htc/widget/HtcCheckBox;->getVisibility()I

    move-result v11

    if-nez v11, :cond_b

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCKMOptionCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v11}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 605
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 610
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getEapMethod()Ljava/lang/String;

    move-result-object v5

    .line 611
    .local v5, eapType:Ljava/lang/String;
    if-eqz v5, :cond_8

    .line 612
    const-string v11, "LEAP"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 613
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mCCXEncryptionSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 614
    .local v6, encryptType:Ljava/lang/String;
    const-string v11, "TKIP"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    .line 615
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 616
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 632
    .end local v5           #eapType:Ljava/lang/String;
    .end local v6           #encryptType:Ljava/lang/String;
    :cond_8
    :goto_4
    new-instance v11, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v11}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 635
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getEapMethod()Ljava/lang/String;

    move-result-object v5

    .line 636
    .restart local v5       #eapType:Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->findEapIndex(Ljava/lang/String;)I

    move-result v4

    .line 637
    .local v4, eapMethod:I
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->getPhase2MethodIndex()I

    move-result v10

    .line 638
    .local v10, phase2Method:I
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 639
    packed-switch v4, :pswitch_data_1

    .line 661
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 664
    :goto_5
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 665
    .local v0, caCert:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    const-string v0, ""

    .line 666
    :cond_9
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v0}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 667
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 668
    .local v1, clientCert:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    const-string v1, ""

    .line 669
    :cond_a
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v11, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 670
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 671
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 674
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->isShown()Z

    move-result v11

    if-eqz v11, :cond_f

    .line 677
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 678
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 607
    .end local v0           #caCert:Ljava/lang/String;
    .end local v1           #clientCert:Ljava/lang/String;
    .end local v4           #eapMethod:I
    .end local v5           #eapType:Ljava/lang/String;
    .end local v10           #phase2Method:I
    :cond_b
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_3

    .line 617
    .restart local v5       #eapType:Ljava/lang/String;
    .restart local v6       #encryptType:Ljava/lang/String;
    :cond_c
    const-string v11, "AES"

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 618
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 619
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 622
    .end local v6           #encryptType:Ljava/lang/String;
    :cond_d
    const-string v11, "FAST"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 623
    const-string v11, "\"fast_provisioning=3\""

    iput-object v11, v3, Landroid/net/wifi/WifiConfiguration;->phase1:Ljava/lang/String;

    goto/16 :goto_4

    .line 629
    .end local v5           #eapType:Ljava/lang/String;
    :cond_e
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 630
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_4

    .line 644
    .restart local v4       #eapMethod:I
    .restart local v5       #eapType:Ljava/lang/String;
    .restart local v10       #phase2Method:I
    :pswitch_4
    packed-switch v10, :pswitch_data_2

    .line 655
    const-string v11, "WifiConfigController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown phase2 method"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 646
    :pswitch_5
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 649
    :pswitch_6
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x3

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 652
    :pswitch_7
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v12, 0x4

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_5

    .line 682
    .restart local v0       #caCert:Ljava/lang/String;
    .restart local v1       #clientCert:Ljava/lang/String;
    :cond_f
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v12}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 714
    .end local v0           #caCert:Ljava/lang/String;
    .end local v1           #clientCert:Ljava/lang/String;
    .end local v4           #eapMethod:I
    .end local v5           #eapType:Ljava/lang/String;
    .end local v10           #phase2Method:I
    :pswitch_8
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x5

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 715
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v11}, Lcom/htc/widget/HtcAutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 716
    .restart local v9       #password:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-eqz v11, :cond_3

    .line 717
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v11}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v11

    if-nez v11, :cond_10

    .line 718
    invoke-static {v9}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiPsk(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 720
    :cond_10
    invoke-static {v9}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiPskHex(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 725
    .end local v9           #password:Ljava/lang/String;
    :pswitch_9
    iget-object v11, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v12, 0x6

    invoke-virtual {v11, v12}, Ljava/util/BitSet;->set(I)V

    .line 726
    const-string v11, "1"

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 727
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 729
    .local v8, name:Ljava/lang/String;
    if-eqz v8, :cond_11

    .line 730
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keystore://WAPIAS_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiAsCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 733
    :cond_11
    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    invoke-virtual {v11}, Lcom/htc/widget/HtcSpinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 734
    .local v2, clientname:Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 735
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keystore://WAPIUSR_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiUserCert(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    .line 737
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "keystore://WAPIUSR_"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v3, v11}, Lcom/htc/wrap/android/net/wifi/HtcWrapWifiConfiguration;->setWapiUserKey(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 561
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 639
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
    .end packed-switch

    .line 644
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public hasSecurity()Z
    .locals 1

    .prologue
    .line 1677
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public is8021xEdit()Z
    .locals 2

    .prologue
    .line 1484
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1472
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isError()Z
    .locals 2

    .prologue
    .line 1466
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInvalidPassword()Z
    .locals 2

    .prologue
    .line 1480
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeyStoreSecurity()Z
    .locals 2

    .prologue
    .line 1681
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRetryPassword()Z
    .locals 2

    .prologue
    .line 1476
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWepSecurity()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1686
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const v3, 0x7f0902c0

    const/4 v4, 0x0

    .line 1578
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v2, :cond_2

    .line 1579
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->getSelectionEnd()I

    move-result v1

    .line 1580
    .local v1, cursorPosition:I
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x90

    :goto_0
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAutoCompleteTextView;->setInputType(I)V

    .line 1584
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0083

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 1585
    if-ltz v1, :cond_0

    .line 1586
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAutoCompleteTextView;->setSelection(I)V

    .line 1620
    .end local v1           #cursorPosition:I
    :cond_0
    :goto_1
    return-void

    .line 1580
    .restart local v1       #cursorPosition:I
    :cond_1
    const/16 v2, 0x80

    goto :goto_0

    .line 1588
    .end local v1           #cursorPosition:I
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEnableWapiHexCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v2, :cond_3

    .line 1589
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    if-eqz v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Lcom/htc/widget/HtcAutoCompleteTextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1592
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    if-ne p1, v2, :cond_5

    .line 1593
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowAdvancedCheckBox:Lcom/htc/widget/HtcCheckBox;

    invoke-virtual {v2}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1594
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1596
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1598
    :cond_5
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    if-ne p1, v2, :cond_0

    .line 1599
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-boolean v2, v2, Lcom/android/settings/wifi/AccessPoint;->blocked:Z

    if-eqz v2, :cond_6

    .line 1600
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v4}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1601
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    const v3, 0x7f0c07e7

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 1602
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->RemoveOpenNetworkFromBlockedList(Ljava/lang/String;)I

    .line 1603
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove block ssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1605
    :cond_6
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getOpenNetworkBlockedList()Ljava/util/List;

    move-result-object v0

    .line 1607
    .local v0, blockedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_7

    .line 1609
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c07ee

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 1614
    :cond_7
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/wifi/AccessPoint;->setBlocked(Z)V

    .line 1615
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mBlockNotifyButton:Lcom/htc/widget/HtcRimButton;

    const v3, 0x7f0c07e8

    invoke-virtual {v2, v3}, Lcom/htc/widget/HtcRimButton;->setText(I)V

    .line 1616
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager;->addOpenNetworkToBlockedList(Ljava/lang/String;)I

    .line 1617
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_0

    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add block ssid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public onItemSelected(Lcom/htc/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 1624
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_1

    .line 1625
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1626
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1627
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1628
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->state()Landroid/security/KeyStore$State;

    move-result-object v0

    sget-object v1, Landroid/security/KeyStore$State;->UNLOCKED:Landroid/security/KeyStore$State;

    if-eq v0, v1, :cond_0

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mNeedReloadCertificate:Z

    .line 1631
    const-string v0, "WifiConfigController"

    const-string v1, "aaa unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1650
    return-void

    .line 1638
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCmccEapMethodSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_3

    .line 1639
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1640
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateEAPFields()V

    goto :goto_0

    .line 1641
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_4

    .line 1642
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_0

    .line 1643
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWepIndexSpinner:Lcom/htc/widget/HtcSpinner;

    if-eq p1, v0, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    if-ne p1, v0, :cond_5

    .line 1645
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateEAPFields()V

    goto :goto_0

    .line 1647
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_0
.end method

.method public onNothingSelected(Lcom/htc/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1674
    .local p1, parent:Lcom/htc/widget/AdapterView;,"Lcom/htc/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 1559
    return-void
.end method

.method public reloadCertificates()V
    .locals 2

    .prologue
    .line 1690
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1692
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mClientCertificateSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRCERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1697
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "CACERT_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Lcom/htc/widget/HtcSpinner;

    const-string v1, "USRPKEY_"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Lcom/htc/widget/HtcSpinner;Ljava/lang/String;)V

    goto :goto_0
.end method
