.class public final Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;
.super Lcom/htc/preference/HtcPreference;
.source "HtcFeedbackPreference.java"


# static fields
.field private static final FEEDBACK_PACKAGE_NAME:Ljava/lang/String; = "com.htc.feedback"

.field private static final INTENT_ACTION:Ljava/lang/String; = "com.htc.feedback.REPORT_SETTINGS"

.field private static final KEY:Ljava/lang/String; = "feedback_options"


# instance fields
.field private mAllowAdd:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/htc/preference/HtcPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->initialize()V

    return-void
.end method


# virtual methods
.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lcom/htc/preference/HtcPreferenceGroup;->addPreference(Lcom/htc/preference/HtcPreference;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addToParent(Lcom/htc/preference/HtcPreferenceScreen;I)Z
    .locals 1

    invoke-virtual {p0, p2}, Lcom/htc/preference/HtcPreference;->setOrder(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->addToParent(Lcom/htc/preference/HtcPreferenceScreen;)Z

    move-result v0

    return v0
.end method

.method protected applyDemoMode()V
    .locals 1

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isDisabledInDemoMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/htc/preference/HtcPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected initialize()V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getKey()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    const-string v6, "feedback_options"

    invoke-virtual {p0, v6}, Lcom/htc/preference/HtcPreference;->setKey(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v1, 0x0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "htc_error_report_setting"

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v4, :cond_2

    :goto_0
    iput-boolean v4, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    :try_start_0
    iget-boolean v4, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    if-eqz v4, :cond_1

    const-string v4, "com.htc.feedback"

    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_1
    :goto_1
    if-eqz v1, :cond_3

    const-string v4, "setting_name"

    const-string v5, "string"

    const-string v6, "com.htc.feedback"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreference;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.htc.feedback.REPORT_SETTINGS"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/htc/preference/HtcPreference;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/htc/preference/HtcPreference;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const/high16 v5, 0x1000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->applyDemoMode()V

    return-void

    :cond_2
    move v4, v5

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lcom/android/settings/framework/preference/update/HtcFeedbackPreference;->mAllowAdd:Z

    goto :goto_2

    :catch_0
    move-exception v4

    goto :goto_1
.end method
