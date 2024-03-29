.class public Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcFingerprintQuickLaunchSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 0

    return-void
.end method

.method private getFpIcon(I)I
    .locals 1

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f0202a6

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0202a7

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0202a8

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0202a9

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0202aa

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0202ab

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0202a7

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0202a8

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0202a9

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0202aa

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0202ab

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private updateQuickLuanchItem()V
    .locals 14

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    const v10, 0x7f0c0234

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreference;->setTitle(I)V

    invoke-virtual {p0, v8}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    if-eqz v6, :cond_0

    new-instance v4, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;

    invoke-direct {v4, v1}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCusTitle(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v6, v1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0237

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustSummary(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustFingerId(I)V

    invoke-virtual {v1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->getFpIcon(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    invoke-virtual {p0, v4}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const-string v10, ""

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustSummary(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    const v0, 0x7f0c0230

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->doPlugin()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->updateQuickLuanchItem()V

    return-void
.end method
