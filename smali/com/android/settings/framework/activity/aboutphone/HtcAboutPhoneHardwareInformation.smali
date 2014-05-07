.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneHardwareInformation.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneHardwareInformation"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 6

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    .line 74
    .local v2, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v3

    .line 75
    .local v3, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v4, 0x7f0c06e6

    invoke-virtual {v3, v4}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 81
    invoke-virtual {v3}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 83
    .local v0, nPhone:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    sget-boolean v4, Lcom/android/settings/HtcFeatureList;->FEATURE_THIS_IS_WORLD_PHONE:Z

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareVersion:Lcom/android/settings/framework/content/custom/property/HtcIProperty;

    invoke-interface {v4}, Lcom/android/settings/framework/content/custom/property/HtcIProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    const-string v4, "HtcAboutPhoneHardwareInformation"

    const-string v5, "OoO HtcHardwareVersionPreference"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 90
    .local v1, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 95
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportProcessorInfo(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 96
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcProcessorInfoPreference;-><init>(Landroid/content/Context;)V

    .line 97
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 98
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 101
    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMemoryInfoPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMemoryInfoPreference;-><init>(Landroid/content/Context;)V

    .line 102
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 105
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcDisplayInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcDisplayInfoPreference;-><init>(Landroid/content/Context;)V

    .line 106
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 109
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMainCameraInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcMainCameraInfoPreference;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportFrontCameraInfo()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 114
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcFrontCameraInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcFrontCameraInfoPreference;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 116
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 119
    :cond_3
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiInfoPreference;-><init>(Landroid/content/Context;)V

    .line 120
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 121
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 123
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcWifiMACPreference;-><init>(Landroid/content/Context;)V

    .line 124
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 125
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 128
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothInfoPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothInfoPreference;-><init>(Landroid/content/Context;)V

    .line 129
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 130
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 132
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcBluetoothAddressPreference;-><init>(Landroid/content/Context;)V

    .line 133
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 134
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 136
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isIusacellMxSpaSku()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 137
    new-instance v1, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/settings/framework/preference/aboutphone/identity/HtcLteIccPreference;-><init>(Landroid/content/Context;)V

    .line 138
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v3, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 139
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 141
    :cond_4
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 150
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneHardwareInformation;->requestHandlers()V

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
