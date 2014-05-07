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

    .prologue
    .line 61
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

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const v9, 0x7ffffffe

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 110
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v2, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 111
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v4, 0x7f0c06df

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 112
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 115
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v4

    const/high16 v5, 0x3fc0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 116
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;)V

    .line 117
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 118
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 121
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    .line 122
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 142
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

    .line 150
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMEI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_IMEI:Z

    if-ne v4, v7, :cond_10

    .line 157
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "OoO get CDMA IMEI Info."

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiPreference;-><init>(Landroid/content/Context;)V

    .line 159
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 160
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 162
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_CDMA_IMEI_SV:Z

    if-nez v4, :cond_1

    .line 163
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaImeiSvPreference;-><init>(Landroid/content/Context;)V

    .line 164
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 165
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 186
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;-><init>(Landroid/content/Context;)V

    .line 187
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 188
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 190
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_REMOVE_DEVICE_SERIAL_NUMBER:Z

    if-eqz v4, :cond_2

    .line 192
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->removePreference(Lcom/htc/preference/HtcPreference;)Z

    .line 216
    :cond_2
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_DISABLE_MEID:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_3

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v7, :cond_4

    .line 226
    :cond_3
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    .line 227
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 228
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 232
    :cond_4
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SUPPORT_DEC_MEID:Z

    if-eqz v4, :cond_5

    .line 236
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDecMeidPreference;-><init>(Landroid/content/Context;)V

    .line 237
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 238
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 240
    :cond_5
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

    if-ne v4, v7, :cond_6

    .line 241
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in Cdma Nai preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;-><init>(Landroid/content/Context;)V

    .line 244
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 245
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 261
    :cond_6
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-ne v4, v7, :cond_7

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICC_INFORMAION:Z

    if-ne v4, v7, :cond_9

    .line 266
    :cond_8
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIDPreference;-><init>(Landroid/content/Context;)V

    .line 267
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 268
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 269
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in UICC ID  preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_9
    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_SHOW_UICCIMSI_INFORMAION:Z

    if-ne v4, v7, :cond_a

    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_a

    .line 276
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcUICCIMSIPreference;-><init>(Landroid/content/Context;)V

    .line 277
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 279
    sget-object v4, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v5, "plug-in IMSI(UICC)  preference"

    invoke-static {v4, v5}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v4

    const/high16 v5, 0x40b0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_b

    .line 286
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/VzwFirstBootTimePreference;-><init>(Landroid/content/Context;)V

    .line 290
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 291
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 292
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 306
    :cond_b
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v4

    if-nez v4, :cond_d

    .line 310
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiIpAddressPreference;-><init>(Landroid/content/Context;)V

    .line 311
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    const v4, 0x7ffffffb

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 312
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 313
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 316
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    .line 317
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    const v4, 0x7ffffffc

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 318
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 319
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 323
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    .line 324
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    const v4, 0x7ffffffd

    invoke-virtual {v1, v4}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 325
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 326
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 329
    const-string v4, "phone"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 333
    .local v0, nPhone:Landroid/telephony/TelephonyManager;
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

    .line 336
    :cond_c
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 337
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v9}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 338
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 339
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 345
    .end local v0           #nPhone:Landroid/telephony/TelephonyManager;
    :cond_d
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPhoneNumber()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 346
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    .line 347
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 348
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 351
    :cond_e
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMSI(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 352
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    .line 353
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 354
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 357
    :cond_f
    return-void

    .line 170
    :cond_10
    iget-object v4, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v4

    if-eq v4, v8, :cond_1

    .line 172
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreference;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 174
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    .line 177
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreference;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 179
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 396
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 401
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 75
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 83
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->requestHandlers()V

    .line 88
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, e:Ljava/lang/RuntimeException;
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentity;->TAG:Ljava/lang/String;

    const-string v2, "Failed to invoke doPlugin(...)"

    invoke-static {v1, v2, v0}, Lcom/android/settings/framework/util/log/HtcLog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
