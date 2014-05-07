.class Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;
.super Ljava/lang/Object;
.source "HtcAboutPhonePluginManager.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNetworkTypeString(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 5
    .parameter "res"

    .prologue
    .line 61
    const-string v3, "gsm.network.type"

    const v4, 0x7f0c0b48

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 65
    .local v1, networkTypeSummary:Ljava/lang/String;
    const-string v3, "Unknown"

    invoke-static {v3, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 68
    .local v2, telephonyManager:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    .line 69
    .local v0, networkType:I
    if-nez v0, :cond_0

    .line 71
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType()I

    move-result v0

    .line 73
    :cond_0
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .end local v0           #networkType:I
    .end local v2           #telephonyManager:Landroid/telephony/TelephonyManager;
    :cond_1
    return-object v1
.end method

.method public static pluginCdmaNAI(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;Ljava/lang/String;)Lcom/htc/preference/HtcPreference;
    .locals 4
    .parameter "fragment"
    .parameter "parent"
    .parameter "result"

    .prologue
    .line 103
    new-instance v0, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0f0017

    invoke-direct {v0, v1, v2, v3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    .local v0, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    const v1, 0x7f0c0732

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 108
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    const v1, 0x7f0c0e4a

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    .line 113
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 115
    return-object v0

    .line 111
    :cond_0
    invoke-virtual {v0, p2}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static pluginNetworkType(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/htc/preference/HtcPreference;
    .locals 5
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 49
    new-instance v1, Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x7f0f0017

    invoke-direct {v1, v2, v3, v4}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    .local v1, p:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 52
    const v2, 0x7f0c0e59

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhonePluginManager;->getNetworkTypeString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, networkType:Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setSelectable(Z)V

    .line 57
    return-object v1
.end method

.method public static pluginServiceState(Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;Lcom/htc/preference/HtcPreferenceGroup;)Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
    .locals 4
    .parameter "fragment"
    .parameter "parent"

    .prologue
    .line 88
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0f0017

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    .local v0, p:Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;
    invoke-virtual {p1, v0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 93
    const v1, 0x7f0c0e5c

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->setTitle(I)V

    .line 94
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/activity/aboutphone/telephony/HtcServiceStatePreference;->setSelectable(Z)V

    .line 95
    return-object v0
.end method
