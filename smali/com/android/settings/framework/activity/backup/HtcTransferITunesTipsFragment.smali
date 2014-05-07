.class public Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferITunesTipsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreferenceFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/htc/preference/HtcPreferenceFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    return-void
.end method

.method private pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V
    .locals 8

    const/high16 v7, 0x40b0

    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0c0a70

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    packed-switch p3, :pswitch_data_0

    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid index: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :pswitch_0
    const v2, 0x7f0c0a71

    :goto_0
    new-instance v1, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;

    invoke-direct {v1, p0, p1, p1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;Landroid/content/Context;Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    return-void

    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_0

    const v0, 0x7f0c0a72

    :goto_1
    move v2, v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0c0a73

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_1

    const v0, 0x7f0c0a74

    :goto_2
    move v2, v0

    goto :goto_0

    :cond_1
    const v0, 0x7f0c0a75

    goto :goto_2

    :pswitch_3
    const v2, 0x7f0c0a76

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected getParentFragmentName()Ljava/lang/String;
    .locals 1

    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->onPlugin(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->requestHandlers()V

    return-void
.end method
