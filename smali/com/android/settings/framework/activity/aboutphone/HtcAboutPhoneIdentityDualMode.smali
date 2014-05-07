.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneIdentityDualMode.java"


# instance fields
.field private mMainPhoneType:I

.field private mSubPhoneType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 14

    .prologue
    const v13, 0x7f0c0a09

    const v12, 0x7f0c0a07

    const/4 v11, 0x5

    const/4 v10, 0x1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v5

    .line 120
    .local v5, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v6

    .line 121
    .local v6, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v7, 0x7f0c06df

    invoke-virtual {v6, v7}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 122
    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 125
    invoke-static {}, Lcom/android/settings/framework/flag/HtcSkuFlags;->getTabletSenseVersion()F

    move-result v7

    const/high16 v8, 0x3fc0

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_0

    .line 126
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceNamePreference;-><init>(Landroid/content/Context;)V

    .line 127
    .local v4, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 128
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 131
    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    :cond_0
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcModelNumberPreference;-><init>(Landroid/content/Context;)V

    .line 132
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 133
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 138
    invoke-static {}, Lcom/htc/service/HtcTelephonyManager;->getDefault()Lcom/htc/service/HtcTelephonyManager;

    move-result-object v7

    const-string v8, "getAllDeviceIdInfo"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcom/htc/service/HtcTelephonyManager;->generalGetterInternal(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 142
    :cond_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 144
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 145
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 146
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 147
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 149
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 150
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7f0c0a08

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 151
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 155
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->support1IMEI()Z

    move-result v7

    if-nez v7, :cond_2

    .line 156
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v11}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 157
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 158
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 159
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 161
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v11}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 162
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7f0c0a0a

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 163
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 164
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 207
    :cond_2
    :goto_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v7

    if-nez v7, :cond_4

    .line 210
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    .line 211
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7ffffffc

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 212
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 217
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    .line 218
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7ffffffd

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 219
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 220
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "phone"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 227
    .local v3, nPhone:Landroid/telephony/TelephonyManager;
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

    .line 230
    :cond_3
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 231
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7ffffffe

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    .line 232
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 233
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 242
    .end local v3           #nPhone:Landroid/telephony/TelephonyManager;
    :cond_4
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcDeviceSerialNumberPreference;-><init>(Landroid/content/Context;)V

    .line 243
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 244
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 246
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeCG()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 247
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;)V

    .line 248
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 249
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 252
    :cond_5
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v7

    if-eqz v7, :cond_6

    if-eqz v0, :cond_6

    .line 253
    const-string v7, "slot1_meid"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, meid:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 255
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v2}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcMeidPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 256
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 257
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 262
    .end local v2           #meid:Ljava/lang/String;
    :cond_6
    sget-boolean v7, Lcom/android/settings/HtcFeatureList;->FEATURE_CDMA_SETTING_SUPPORT_NAI:Z

    if-ne v7, v10, :cond_7

    .line 264
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcCdmaNaiPreference;-><init>(Landroid/content/Context;)V

    .line 265
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 266
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 284
    :cond_7
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPhoneNumber()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 285
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    move-object v7, v4

    .line 286
    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->setPhoneType(I)V

    .line 287
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 288
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 290
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;-><init>(Landroid/content/Context;)V

    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    move-object v7, v4

    .line 291
    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcPhoneNumberPreference;->setPhoneType(I)V

    .line 292
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 293
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 296
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportIMSI(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 297
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    move-object v7, v4

    .line 298
    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->setPhoneType(I)V

    .line 299
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 300
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 302
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;-><init>(Landroid/content/Context;)V

    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    move-object v7, v4

    .line 303
    check-cast v7, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;

    iget v8, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    invoke-virtual {v7, v8}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImsiPreference;->setPhoneType(I)V

    .line 304
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 305
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 308
    :cond_9
    return-void

    .line 169
    :cond_a
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    .line 170
    const-string v7, "slot1_imei"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 171
    .local v1, imei:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 172
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v1}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 173
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v4, v12}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 174
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 175
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 179
    .end local v1           #imei:Ljava/lang/String;
    :cond_b
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 180
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAllIMEI()Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v0, :cond_c

    .line 181
    invoke-virtual {v4, v13}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 187
    :goto_1
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 188
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    .line 190
    new-instance v4, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;

    .end local v4           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v4, v7, v10}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcImeiSvPreferenceDualMode;-><init>(Landroid/content/Context;I)V

    .line 191
    .restart local v4       #preference:Lcom/htc/preference/HtcPreference;
    const v7, 0x7f0c0e52

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 192
    invoke-virtual {v6, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 193
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 184
    :cond_c
    const v7, 0x7f0c0bf6

    invoke-virtual {v4, v7}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    .line 57
    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    .line 58
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcWirelessFeatureFlags;->isModeGG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    iput v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mMainPhoneType:I

    .line 60
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->mSubPhoneType:I

    .line 64
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneIdentityDualMode;->requestHandlers()V

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
