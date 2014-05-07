.class public Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcFingerprintQuickLaunchSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 24
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

    .line 26
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    return-void
.end method

.method private doPlugin()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method private getFpIcon(I)I
    .locals 1
    .parameter "nFpIndex"

    .prologue
    .line 109
    const/4 v0, -0x1

    .line 111
    .local v0, nResId:I
    packed-switch p1, :pswitch_data_0

    .line 125
    :goto_0
    return v0

    .line 112
    :pswitch_0
    const v0, 0x7f0202a6

    goto :goto_0

    .line 113
    :pswitch_1
    const v0, 0x7f0202a7

    goto :goto_0

    .line 114
    :pswitch_2
    const v0, 0x7f0202a8

    goto :goto_0

    .line 115
    :pswitch_3
    const v0, 0x7f0202a9

    goto :goto_0

    .line 116
    :pswitch_4
    const v0, 0x7f0202aa

    goto :goto_0

    .line 117
    :pswitch_5
    const v0, 0x7f0202ab

    goto :goto_0

    .line 118
    :pswitch_6
    const v0, 0x7f0202a7

    goto :goto_0

    .line 119
    :pswitch_7
    const v0, 0x7f0202a8

    goto :goto_0

    .line 120
    :pswitch_8
    const v0, 0x7f0202a9

    goto :goto_0

    .line 121
    :pswitch_9
    const v0, 0x7f0202aa

    goto :goto_0

    .line 122
    :pswitch_a
    const v0, 0x7f0202ab

    goto :goto_0

    .line 111
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

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 45
    .local v1, context:Landroid/content/Context;
    new-instance v2, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;

    invoke-direct {v2, v1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;-><init>(Landroid/content/Context;)V

    .line 46
    .local v2, fingerMgr:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;
    invoke-virtual {v2}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerManager;->getRecords()Ljava/util/ArrayList;

    move-result-object v7

    .line 48
    .local v7, recordList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;>;"
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v5

    .line 49
    .local v5, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v5, v1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v8

    .line 50
    .local v8, root:Lcom/htc/preference/HtcPreferenceScreen;
    const v10, 0x7f0c0234

    invoke-virtual {v8, v10}, Lcom/htc/preference/HtcPreferenceScreen;->setTitle(I)V

    .line 51
    invoke-virtual {p0, v8}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 55
    if-eqz v7, :cond_3

    .line 56
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;

    .line 57
    .local v6, record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    if-eqz v6, :cond_0

    .line 61
    new-instance v4, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;

    invoke-direct {v4, v1}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;-><init>(Landroid/content/Context;)V

    .line 64
    .local v4, itemPreference:Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;
    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 65
    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCusTitle(Ljava/lang/String;)V

    .line 69
    :cond_1
    invoke-virtual {v6, v1}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getComponentDisplayName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, componentName:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 71
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0c0237

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 72
    .local v9, summary:Ljava/lang/String;
    invoke-virtual {v4, v9}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustSummary(Ljava/lang/String;)V

    .line 78
    .end local v9           #summary:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getId()I

    move-result v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustFingerId(I)V

    .line 81
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;->getFingerIndex()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->getFpIcon(I)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual {v8, v4}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 84
    invoke-virtual {p0, v4}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->addCallback(Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    :cond_2
    const-string v10, ""

    invoke-virtual {v4, v10}, Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;->setCustSummary(Ljava/lang/String;)V

    goto :goto_1

    .line 88
    .end local v0           #componentName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemPreference:Lcom/android/settings/framework/preference/fingerprint/HtcFingerprintQuickLaunchRecord;
    .end local v6           #record:Lcom/android/settings/framework/core/fingerprint/HtcEnrolledFingerRecord;
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->requestHandlers()V

    .line 89
    return-void
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getParentFragmentTitleResId()I
    .locals 1

    .prologue
    .line 105
    const v0, 0x7f0c0230

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->doPlugin()V

    .line 33
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 93
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onResume()V

    .line 95
    invoke-direct {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintQuickLaunchSettings;->updateQuickLuanchItem()V

    .line 96
    return-void
.end method
