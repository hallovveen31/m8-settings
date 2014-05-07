.class public final Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcAboutPhoneSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;,
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;,
        Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;
    }
.end annotation


# static fields
.field private static ACTION_CHANGE_SUMMARY:Ljava/lang/String; = null

.field private static ACU_VAR_PROCESSING:Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "HtcAboutPhoneSettings"

.field private static htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;


# instance fields
.field private mIsUpdaterProcessing:Z

.field private mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 105
    const-string v0, "com.htc.updater.ACU_CHANGE_SUMMARY"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    .line 106
    const-string v0, "isUpdaterProcessing"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 392
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/preference/update/HtcFOTAPreference;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->isUpdaterProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    return-object v0
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    const/4 v3, 0x2

    .line 122
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getDeviceType()I

    move-result v7

    .line 128
    .local v7, deviceType:I
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 129
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    if-ne v7, v3, :cond_a

    .line 130
    const v0, 0x7f0c02ee

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 134
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 137
    invoke-virtual {v1}, Lcom/htc/preference/HtcPreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    .line 139
    .local v10, nPhone:Landroid/telephony/TelephonyManager;
    const/4 v6, 0x0

    .line 140
    .local v6, bCDMAPhone:Z
    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 141
    const/4 v6, 0x1

    .line 146
    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    :cond_1
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    .line 148
    .local v11, preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 149
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 150
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;)V

    .line 151
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 152
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 165
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    .line 166
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 167
    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setDownloadSummary(Z)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPRLUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 172
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonePRLUpdatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonePRLUpdatePreference;-><init>(Landroid/content/Context;)V

    .line 173
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 174
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 179
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_3
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAddSystemUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneAddSystemUpdatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneAddSystemUpdatePreference;-><init>(Landroid/content/Context;)V

    .line 185
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 186
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 190
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 191
    .local v8, intent:Landroid/content/Intent;
    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ctc.epush"

    const-string v3, "com.ctc.epush.IndexActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    .line 195
    .local v9, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 196
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneTelecomEpushPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneTelecomEpushPreference;-><init>(Landroid/content/Context;)V

    .line 197
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 198
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 210
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_5
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHelp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 211
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;-><init>(Landroid/content/Context;)V

    .line 212
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 213
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 224
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportNetwork()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 225
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;-><init>(Landroid/content/Context;)V

    .line 226
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 227
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 232
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_7
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;-><init>(Landroid/content/Context;)V

    .line 233
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 234
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 240
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 241
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;-><init>(Landroid/content/Context;)V

    .line 242
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 243
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 247
    :cond_8
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;

    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;-><init>(Landroid/content/Context;)V

    .line 248
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 249
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 251
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;

    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;-><init>(Landroid/content/Context;)V

    .line 252
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    .line 253
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->get(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 257
    const v2, 0x7f0c06f3

    const v3, 0x7f0c06f4

    const-string v4, "com.htc.android.htcsetupwizard"

    const-string v5, "com.htc.android.htcsetupwizard.activity.TutorialActivity"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V

    .line 265
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->requestHandlers()V

    .line 266
    return-void

    .line 132
    .end local v6           #bCDMAPhone:Z
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v10           #nPhone:Landroid/telephony/TelephonyManager;
    .end local v11           #preference:Lcom/htc/preference/HtcPreference;
    :cond_a
    const v0, 0x7f0c0f0e

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    goto/16 :goto_0

    .line 215
    .restart local v6       #bCDMAPhone:Z
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v10       #nPhone:Landroid/telephony/TelephonyManager;
    :cond_b
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 216
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    .line 217
    .restart local v11       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 218
    invoke-virtual {p0, v11}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private isUpdaterProcessing()Z
    .locals 11

    .prologue
    .line 406
    const/4 v9, 0x0

    .line 408
    .local v9, isProcess:Z
    const/4 v6, 0x0

    .line 410
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "status"

    aput-object v3, v2, v1

    .line 412
    .local v2, queryProjection:[Ljava/lang/String;
    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "otaupdate=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v10, "1"

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 413
    const/16 v7, -0x270f

    .line 414
    .local v7, downloadStatus:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 416
    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    .line 417
    const/4 v9, 0x1

    .line 423
    :cond_0
    if-eqz v6, :cond_1

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #queryProjection:[Ljava/lang/String;
    .end local v7           #downloadStatus:I
    :goto_0
    const/4 v6, 0x0

    .line 428
    :cond_1
    return v9

    .line 420
    :catch_0
    move-exception v8

    .line 421
    .local v8, e:Ljava/lang/Exception;
    const/4 v9, 0x0

    .line 423
    if-eqz v6, :cond_1

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 423
    .end local v8           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 424
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 425
    const/4 v6, 0x0

    .line 423
    :cond_2
    throw v1
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 311
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 312
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 313
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 315
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 316
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 317
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 318
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 319
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "action"

    .prologue
    .line 343
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 344
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 345
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 346
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 348
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 349
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 350
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 351
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 352
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "root"
    .parameter "titleResId"
    .parameter "summaryResID"
    .parameter "packageName"
    .parameter "className"

    .prologue
    .line 327
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 328
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 329
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 330
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 332
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 333
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 336
    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "title"
    .parameter "summary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 294
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 295
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 296
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(Ljava/lang/CharSequence;)V

    .line 297
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 300
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 301
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 302
    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private pluginPreferenceScreenForFragment(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .parameter "root"
    .parameter "aboutphoneBatteryTitle"
    .parameter "aboutphoneBatterySummary"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 276
    .local p4, activityClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 277
    .local v1, ps:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 278
    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 279
    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreferenceScreen;->setSummary(I)V

    .line 281
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 282
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 283
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 284
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreferenceScreen;->setFragment(Ljava/lang/String;)V

    .line 286
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 434
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 437
    .local v2, root:Landroid/widget/LinearLayout;
    new-instance v0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/srci/HtcSettingsSrciEntryView;-><init>(Landroid/content/Context;)V

    .line 438
    .local v0, child:Landroid/view/View;
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 439
    .local v1, params:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 440
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 442
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->doPlugin(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->requestHandlers()V

    .line 119
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, e:Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 385
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 387
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    .line 388
    .local v0, updaterThread:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;
    invoke-virtual {v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;->start()V

    .line 390
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 367
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    .line 370
    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    .line 371
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.permission.Settings.ACCESS_SETTINGS"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    .line 375
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 379
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    .line 380
    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 381
    return-void
.end method
