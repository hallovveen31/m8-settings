.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneIdentityDualMode.java"


# instance fields
.field private mMainPhoneType:I

.field private mSubPhoneType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 14

    const v13, 0x7f0c0a09

    const v12, 0x7f0c0a07

    const/4 v11, 0x5

    const/4 v10, 0x1

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    const v7, 0x7f0c06df

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v7

    const/high16 v8, 0x3fc0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_0
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v7

    const-string v8, "getAllDeviceIdInfo"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v7

    if-eqz v7, :cond_a

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0c0a08

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->support1IMEI()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v11}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v11}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0c0a0a

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v7

    if-nez v7, :cond_4

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    const v7, 0x7ffffffc

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    const v7, 0x7ffffffd

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_3

    sget-boolean v7, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v7, :cond_3

    sget-object v7, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    invoke-interface {v7}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    const v7, 0x7ffffffe

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_4
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v7

    if-eqz v7, :cond_5

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    const-string v7, "slot1_meid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_6
    sget-boolean v7, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

    if-ne v7, v10, :cond_7

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPhoneNumber()Z

    move-result v7

    if-eqz v7, :cond_8

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    move-object v7, v4

    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->setPhoneType(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    move-object v7, v4

    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->setPhoneType(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMSI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    move-object v7, v4

    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->setPhoneType(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    move-object v7, v4

    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->setPhoneType(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_9
    return-void

    :cond_a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    const-string v7, "slot1_imei"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v4, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_b
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v0, :cond_c

    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :goto_1
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    const v7, 0x7f0c0e52

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_c
    const v7, 0x7f0c0bf6

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
