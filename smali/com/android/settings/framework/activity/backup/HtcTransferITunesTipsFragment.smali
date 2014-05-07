.class public Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;
.super Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;
.source "HtcTransferITunesTipsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;-><init>()V

    return-void
.end method

.method private onPlugin(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->getPreferenceManager()Lcom/htc/preference/HtcPreferenceManager;

    move-result-object v0

    .line 43
    .local v0, preferenceManager:Lcom/htc/preference/HtcPreferenceManager;
    invoke-virtual {v0, p1}, Lcom/htc/preference/HtcPreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Lcom/htc/preference/HtcPreferenceScreen;

    move-result-object v1

    .line 44
    .local v1, root:Lcom/htc/preference/HtcPreferenceScreen;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->setPreferenceScreen(Lcom/htc/preference/HtcPreferenceScreen;)V

    .line 46
    const/4 v2, 0x1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    .line 47
    const/4 v2, 0x2

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    .line 48
    const/4 v2, 0x3

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    .line 49
    const/4 v2, 0x4

    invoke-direct {p0, p1, v1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V

    .line 50
    return-void
.end method

.method private pluginInstruction(Landroid/content/Context;Lcom/htc/preference/HtcPreferenceScreen;I)V
    .locals 8
    .parameter "context"
    .parameter "root"
    .parameter "stepIndex"

    .prologue
    const/high16 v7, 0x40b0

    .line 61
    new-instance v1, Lcom/htc/preference/HtcPreferenceCategory;

    invoke-direct {v1, p1}, Lcom/htc/preference/HtcPreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 62
    .local v1, preference:Lcom/htc/preference/HtcPreference;
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

    .line 64
    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 66
    packed-switch p3, :pswitch_data_0

    .line 90
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

    .line 68
    :pswitch_0
    const v2, 0x7f0c0a71

    .line 94
    .local v2, titleResId:I
    :goto_0
    new-instance v1, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;

    .end local v1           #preference:Lcom/htc/preference/HtcPreference;
    invoke-direct {v1, p0, p1, p1, v2}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment$1;-><init>(Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;Landroid/content/Context;Landroid/content/Context;I)V

    .line 106
    .restart local v1       #preference:Lcom/htc/preference/HtcPreference;
    invoke-virtual {p0, v1}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->addCallback(Ljava/lang/Object;)V

    .line 107
    invoke-virtual {p2, v1}, Lcom/htc/preference/HtcPreferenceScreen;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    .line 108
    return-void

    .line 71
    .end local v2           #titleResId:I
    :pswitch_1
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_0

    .line 72
    const v0, 0x7f0c0a72

    .line 76
    .local v0, localId:I
    :goto_1
    move v2, v0

    .line 77
    .restart local v2       #titleResId:I
    goto :goto_0

    .line 74
    .end local v0           #localId:I
    .end local v2           #titleResId:I
    :cond_0
    const v0, 0x7f0c0a73

    .restart local v0       #localId:I
    goto :goto_1

    .line 79
    .end local v0           #localId:I
    :pswitch_2
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_1

    .line 80
    const v0, 0x7f0c0a74

    .line 84
    .restart local v0       #localId:I
    :goto_2
    move v2, v0

    .line 85
    .restart local v2       #titleResId:I
    goto :goto_0

    .line 82
    .end local v0           #localId:I
    .end local v2           #titleResId:I
    :cond_1
    const v0, 0x7f0c0a75

    .restart local v0       #localId:I
    goto :goto_2

    .line 87
    .end local v0           #localId:I
    :pswitch_3
    const v2, 0x7f0c0a76

    .line 88
    .restart local v2       #titleResId:I
    goto :goto_0

    .line 66
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

    .prologue
    .line 112
    const-class v0, Lcom/android/settings/framework/activity/backup/HtcTransferIPhoneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcSetupWizardPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->onPlugin(Landroid/content/Context;)V

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/backup/HtcTransferITunesTipsFragment;->requestHandlers()V

    .line 35
    return-void
.end method
