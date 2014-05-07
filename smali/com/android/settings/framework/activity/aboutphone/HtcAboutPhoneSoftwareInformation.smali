.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneSoftwareInformation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;
    }
.end annotation


# static fields
.field private static final EVENT_GET_CDMA_ERI_VERSION:I = 0x3e9

.field private static final LOG_TAG:Ljava/lang/String; = "HtcAboutPhoneSoftwareInformation"

.field private static PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

.field private static PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

.field private static mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

.field private static mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;


# instance fields
.field private final ERI_CMD:Ljava/lang/String;

.field key2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    .line 63
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    .line 64
    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 61
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 84
    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 214
    const-string v0, "C85904000A4552492f303030303400"

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->ERI_CMD:Ljava/lang/String;

    .line 215
    new-instance v0, Ljava/lang/String;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->key2:Ljava/lang/String;

    .line 232
    return-void
.end method

.method private doPlugin()V
    .locals 8

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v4

    .line 100
    .local v4, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v5

    .line 101
    .local v5, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v6, 0x7f0c06e8

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 102
    invoke-virtual {p0, v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 105
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneFirmwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 106
    .local v3, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 107
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 109
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSenseVersionPreference;-><init>(Landroid/content/Context;)V

    .line 110
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 111
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 113
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportROMVersion()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 114
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcROMVersionPreference;-><init>(Landroid/content/Context;)V

    .line 115
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 116
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 119
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportCmccROMVersion()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 120
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcCmccRomVersionPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCmccRomVersionPreference;-><init>(Landroid/content/Context;)V

    .line 121
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 122
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 125
    :cond_1
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;)V

    .line 126
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 127
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 129
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSdkApiLevelPreference;-><init>(Landroid/content/Context;)V

    .line 130
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 131
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 138
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportDistributionTime()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcDistributionTimePreference;-><init>(Landroid/content/Context;)V

    .line 140
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 144
    :cond_2
    const/4 v1, 0x0

    .line 145
    .local v1, createInformations:Z
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v6, v7}, Lcom/android/settings/framework/util/HtcTelephonyUtil;->containCdmaRelatedAccount(Landroid/content/Context;Landroid/telephony/TelephonyManager;)Ljava/lang/Boolean;

    move-result-object v2

    .line 146
    .local v2, hasCdmaAccnt:Ljava/lang/Boolean;
    if-eqz v2, :cond_6

    .line 147
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 152
    :goto_0
    if-eqz v1, :cond_3

    .line 153
    new-instance v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;

    invoke-direct {v6, p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation$MyHandler;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;)V

    iput-object v6, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mHandler:Landroid/os/Handler;

    .line 155
    sput-object v5, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mDuplicateRootPref:Lcom/htc/preference/HtcPreferenceScreen;

    .line 156
    sput-object p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mDuplicateFragment:Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;

    .line 160
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAppVersion(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 161
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcAppVersionPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAppVersionPreference;-><init>(Landroid/content/Context;)V

    .line 162
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 163
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 167
    :cond_4
    new-instance v3, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneMoreSoftwareInfoPreference;

    .end local v3           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Lcom/android/settings/framework/preference/aboutphone/software/HtcAboutPhoneMoreSoftwareInfoPreference;-><init>(Landroid/content/Context;)V

    .line 168
    .restart local v3       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v5, v3}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 169
    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 171
    const/4 v0, 0x0

    .line 174
    .local v0, createCdmaInformations:Z
    move v0, v1

    .line 176
    if-eqz v0, :cond_5

    .line 181
    new-instance v6, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPriPreference;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    .line 182
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 183
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 187
    new-instance v6, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaPrlPreference;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    .line 188
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 189
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaPRL:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 192
    sget-boolean v6, Lcom/android/settings/HtcFeatureList;->FEATURE_ERI_VERSION:Z

    const/4 v7, 0x1

    if-ne v6, v7, :cond_5

    .line 194
    new-instance v6, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaEriPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/settings/framework/preference/aboutphone/software/HtcCdmaEriPreference;-><init>(Landroid/content/Context;)V

    sput-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    .line 195
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {v5, v6}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 196
    sget-object v6, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->PreferenceOfCdmaERI:Lcom/htc/preference/HtcPreference;

    invoke-virtual {p0, v6}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->addCallback(Ljava/lang/Object;)V

    .line 202
    :cond_5
    return-void

    .line 150
    .end local v0           #createCdmaInformations:Z
    :cond_6
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private ensurePhoneObject()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    .line 87
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 89
    :cond_0
    return-void
.end method

.method private showCdmaExtraInfo()V
    .locals 3

    .prologue
    .line 219
    const-string v1, "HtcAboutPhoneSoftwareInformation"

    const-string v2, "Thread create"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 221
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->key2:Ljava/lang/String;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 222
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->ensurePhoneObject()V

    .line 223
    iget-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string v2, "C85904000A4552492f303030303400"

    invoke-interface {v1, v2, v0}, Lcom/android/internal/telephony/HtcIfPhone;->requestHtcDMCommand(Ljava/lang/String;Landroid/os/Message;)V

    .line 224
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 299
    const-class v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 304
    const v0, 0x7f0c0035

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 76
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->doPlugin()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSoftwareInformation;->requestHandlers()V

    .line 81
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 210
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 211
    const-string v0, "HtcAboutPhoneSoftwareInformation"

    const-string v1, "OoO into OnResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method
