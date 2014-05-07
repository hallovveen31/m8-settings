.class public Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;
.super Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;
.source "HtcFingerprintSettings.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Settings:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->TAG:Ljava/lang/String;

    .line 29
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->supportFingerprintSetting()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 36
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFingerprintFeatureFlags;->isFingerprintEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 37
    sget-boolean v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->TAG:Ljava/lang/String;

    const-string v4, "supportFingerprintSetting, isFingerprintEnabled, launch HtcFingerprintUpdateFp"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-class v4, Lcom/android/settings/framework/activity/security/HtcFingerprintUpdateFp;

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 39
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->startActivity(Landroid/content/Intent;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 61
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 42
    :cond_1
    sget-boolean v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->DEBUG:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->TAG:Ljava/lang/String;

    const-string v4, "supportFingerprintSetting, isFingerprintEnabled = false, show a toast instead"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_2
    const v3, 0x7f0c0c89

    invoke-virtual {p0, v3}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, message:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    if-eqz v3, :cond_3

    .line 46
    iget-object v3, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->cancel()V

    .line 48
    :cond_3
    if-eqz v1, :cond_6

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 49
    sget-boolean v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showErrorHintMessage(): message = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_4
    invoke-static {}, Lcom/android/settings/framework/app/HtcSettingsApplication;->getApplication()Landroid/app/Application;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    .line 51
    iget-object v3, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v3

    const v4, 0x102000b

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 52
    .local v2, textView:Landroid/widget/TextView;
    if-eqz v2, :cond_5

    const/16 v3, 0x11

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 53
    :cond_5
    iget-object v3, p0, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->mToast:Landroid/widget/Toast;

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 55
    .end local v2           #textView:Landroid/widget/TextView;
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 58
    .end local v1           #message:Ljava/lang/String;
    :cond_7
    sget-boolean v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->DEBUG:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->TAG:Ljava/lang/String;

    const-string v4, "Fingerprint not supported"

    invoke-static {v3, v4}, Lcom/android/settings/framework/util/log/HtcLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/fingerprint/HtcFingerprintSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method
