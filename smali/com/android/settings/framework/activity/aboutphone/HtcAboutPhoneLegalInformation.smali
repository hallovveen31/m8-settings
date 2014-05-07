.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneLegalInformation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 4

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v1

    .line 58
    .local v1, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v2

    .line 59
    .local v2, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v3, 0x7f0c06ec

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 60
    invoke-virtual {p0, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 66
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcLegalInformation;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcLegalInformation;-><init>(Landroid/content/Context;)V

    .line 67
    .local v0, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 68
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 71
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportSprintLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcSprintLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcSprintLegalInformation;-><init>(Landroid/content/Context;)V

    .line 73
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportGoogleLegalInformation(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 79
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/GoogleLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/GoogleLegalInformation;-><init>(Landroid/content/Context;)V

    .line 80
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 81
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 85
    :cond_1
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/AndroidOpenSourceLicenses;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/AndroidOpenSourceLicenses;-><init>(Landroid/content/Context;)V

    .line 86
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 87
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 91
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportTelecElectricLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 92
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/SmbTelecElectricLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/SmbTelecElectricLegalInformation;-><init>(Landroid/content/Context;)V

    .line 93
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 97
    :cond_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAccessLegalInformation()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 98
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/AccessLegalInformation;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/AccessLegalInformation;-><init>(Landroid/content/Context;)V

    .line 99
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 100
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 103
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportRegulatory(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 104
    new-instance v0, Lcom/android/settings/framework/preference/aboutphone/legal/HtcRegulatoryPreference;

    .end local v0           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/framework/preference/aboutphone/legal/HtcRegulatoryPreference;-><init>(Landroid/content/Context;)V

    .line 105
    .restart local v0       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->addCallback(Ljava/lang/Object;)V

    .line 106
    invoke-virtual {v2, v0}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 109
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->requestHandlers()V

    .line 110
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 119
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreateInBackground(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v0

    .line 45
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 46
    sget-object v1, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneLegalInformation;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
