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

    const-string v0, "com.htc.updater.ACU_CHANGE_SUMMARY"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    const-string v0, "isUpdaterProcessing"

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACU_VAR_PROCESSING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Lcom/android/settings/framework/preference/update/HtcFOTAPreference;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->isUpdaterProcessing()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    return-object v0
.end method

.method private doPlugin(Landroid/content/Context;)V
    .locals 12

    const/4 v3, 0x2

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getDeviceType()I

    move-result v7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    if-ne v7, v3, :cond_a

    const v0, 0x7f0c02ee

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    :goto_0
    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    invoke-virtual {v1}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/telephony/TelephonyManager;

    const/4 v6, 0x0

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    if-ne v0, v3, :cond_0

    const/4 v6, 0x1

    :cond_0
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintSku()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isSprintVmSku()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/hardware/HtcHardwareVersionPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/software/HtcSoftwareNumberPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    sget-object v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->htcFOTAPreference:Lcom/android/settings/framework/preference/update/HtcFOTAPreference;

    iget-boolean v2, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mIsUpdaterProcessing:Z

    invoke-virtual {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFOTAPreference;->setDownloadSummary(Z)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportPRLUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonePRLUpdatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonePRLUpdatePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_3
    new-instance v0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportAddSystemUpdate(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneAddSystemUpdatePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneAddSystemUpdatePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_4
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    new-instance v0, Landroid/content/ComponentName;

    const-string v2, "com.ctc.epush"

    const-string v3, "com.ctc.epush.IndexActivity"

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v2, 0x1

    invoke-virtual {v0, v8, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneTelecomEpushPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneTelecomEpushPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_5
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHelp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHelpPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_6
    :goto_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportNetwork()Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneNetworkPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_7
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhonyIdentityPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportHardwareInformation()Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneHardwarePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    :cond_8
    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcAboutPhoneSoftwarePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/HtcLegalInformationCategory;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/framework/storage/customize/HtcCustomizedSystemTutorial;->get(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    const v2, 0x7f0c06f3

    const v3, 0x7f0c06f4

    const-string v4, "com.htc.android.htcsetupwizard"

    const-string v5, "com.htc.android.htcsetupwizard.activity.TutorialActivity"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void

    :cond_a
    const v0, 0x7f0c0f0e

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    goto/16 :goto_0

    :cond_b
    invoke-static {p1}, Lcom/android/settings/framework/flag/feature/HtcAboutPhoneFeatureFlags;->supportShowMe(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v11, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v11, v0}, Lcom/android/settings/framework/preference/aboutphone/showme/HtcShowMePreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v11}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v11}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method private isUpdaterProcessing()Z
    .locals 11

    const/4 v9, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "status"

    aput-object v3, v2, v1

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

    const/16 v7, -0x270f

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v9, 0x1

    :cond_0
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :goto_0
    const/4 v6, 0x0

    :cond_1
    return v9

    :catch_0
    move-exception v8

    const/4 v9, 0x0

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    const/4 v6, 0x0

    :cond_2
    throw v1
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p4, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private pluginPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 4
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

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(Ljava/lang/CharSequence;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v1, v0}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private pluginPreferenceScreenForFragment(Lcom/htc/preference/HtcPreferenceScreen;IILjava/lang/Class;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/htc/preference/HtcPreferenceScreen;",
            "II",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {v1, p2}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {v1, p3}, Lcom/htc/preference/HtcPreference;->setSummary(I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/preference/HtcPreference;->setFragment(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/srci/HtcSettingsSrciEntryView;

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/settings/srci/HtcSettingsSrciEntryView;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->doPlugin(Landroid/content/Context;)V
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

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$UpdaterThread;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onStart()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStart()V

    new-instance v0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;-><init>(Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    sget-object v2, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->ACTION_CHANGE_SUMMARY:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "com.htc.permission.Settings.ACCESS_SETTINGS"

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public onStop()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings;->mSummaryReceiver:Lcom/android/settings/framework/activity/aboutphone/HtcAboutPhoneSettings$SummaryReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
