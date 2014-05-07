.class public Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManagerDualMode;
.super Ljava/lang/Object;
.source "HtcAboutPhonePluginManagerDualMode.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "fragment"
    .parameter "parent"
    .parameter "phoneType"

    .prologue
    .line 77
    new-instance v2, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0f0017

    invoke-direct {v2, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    .local v2, p:Lcom/htc/preference/HtcPreference;
    const-string v0, "gsm.network.type"

    .line 80
    .local v0, key:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne p2, v3, :cond_1

    .line 81
    const-string v0, "gsm.gsm.network.type"

    .line 87
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0b48

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, networkType:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    const v3, 0x7f0c0e59

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 92
    invoke-virtual {v2, v1}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 94
    return-object v2

    .line 82
    .end local v1           #networkType:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x5

    if-ne p2, v3, :cond_2

    .line 83
    const-string v0, "gsm.sub.network.type"

    goto :goto_0

    .line 84
    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    .line 85
    const-string v0, "gsm.cdma.network.type"

    goto :goto_0
.end method

.method public static pluginOperatorName(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;I)Lcom/htc/preference/HtcPreference;
    .locals 6
    .parameter "fragment"
    .parameter "parent"
    .parameter "phoneType"

    .prologue
    .line 29
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const v5, 0x7f0f0017

    invoke-direct {v1, v3, v4, v5}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    .local v1, p:Lcom/htc/preference/HtcPreference;
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 33
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2, p2}, Landroid/telephony/TelephonyManager;->getNetworkOperatorNameExt(I)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, operatorName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 36
    const v3, 0x7f0c0700

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    const v3, 0x7f0c0b48

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 42
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 43
    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 106
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0f0017

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    .local v0, p:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    const v1, 0x7f0c0e5c

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->setTitle(I)V

    .line 112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreferenceDualMode;->setSelectable(Z)V

    .line 113
    return-object v0
.end method

.method public static pluginSignalStrength(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 58
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0f0017

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    .local v0, p:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 63
    const v1, 0x7f0c0e5d

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setTitle(I)V

    .line 64
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcSignalStrengthPreferenceDualMode;->setSelectable(Z)V

    .line 65
    return-object v0
.end method
