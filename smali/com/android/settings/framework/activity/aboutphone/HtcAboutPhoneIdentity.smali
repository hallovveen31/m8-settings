.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneIdentity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 10

    const v9, 0x7ffffffe

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    const v4, 0x7f0c06df

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v3}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v4

    const/high16 v5, 0x3fc0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "supportIMEI:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI:Z

    if-ne v4, v7, :cond_10

    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "OoO get CDMA IMEI Info."

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_CDMA_IMEI_SV:Z

    if-nez v4, :cond_1

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_REMOVE_DEVICE_SERIAL_NUMBER:Z

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    :cond_2
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MEID:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_3

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v7, :cond_4

    :cond_3
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_4
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_DEC_MEID:Z

    if-eqz v4, :cond_5

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_5
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

    if-ne v4, v7, :cond_6

    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in Cdma Nai preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_6
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v7, :cond_7

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICC_INFORMAION:Z

    if-ne v4, v7, :cond_9

    :cond_8
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in UICC ID  preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICCIMSI_INFORMAION:Z

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_a

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in IMSI(UICC)  preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40b0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_b
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v4

    if-nez v4, :cond_d

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;-><init>(Landroid/content/Context;)V

    const v4, 0x7ffffffb

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    const v4, 0x7ffffffc

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    const v4, 0x7ffffffd

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_c

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v4, :cond_c

    sget-object v4, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    invoke-interface {v4}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_c
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_d
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_e

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMSI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_f
    return-void

    :cond_10
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_1

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to invoke doPlugin(...)"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
