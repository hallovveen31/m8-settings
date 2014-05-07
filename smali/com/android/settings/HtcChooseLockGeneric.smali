.class public Lcom/android/settings/HtcChooseLockGeneric;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "HtcChooseLockGeneric.java"


# static fields
.field private static final ACTION_CONFIRM_PASSWORD_RESULT:Ljava/lang/String; = "com.htc.action.CONFIRM_PASSWORD_RESULT"

.field private static final ACTION_EXIT_CONFIRM_PASSWORD:Ljava/lang/String; = "com.htc.action.EXIT_CONFIRM_PASSWORD"

.field private static final CONFIRM_EXISTING_REQUEST:I = 0x64

.field private static final PASSWORD_CONFIRMED:Ljava/lang/String; = "password_confirmed"


# instance fields
.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mHideKeyguard:Z

.field private mPasswordConfirmed:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/HtcChooseLockGeneric;->mHideKeyguard:Z

    .line 40
    new-instance v0, Lcom/android/settings/HtcChooseLockGeneric$1;

    invoke-direct {v0, p0}, Lcom/android/settings/HtcChooseLockGeneric$1;-><init>(Lcom/android/settings/HtcChooseLockGeneric;)V

    iput-object v0, p0, Lcom/android/settings/HtcChooseLockGeneric;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/HtcChooseLockGeneric;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V

    return-void
.end method

.method private sendResult(I)V
    .locals 2
    .parameter "result"

    .prologue
    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/HtcChooseLockGeneric;->setResult(I)V

    .line 116
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.htc.action.CONFIRM_PASSWORD_RESULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, v0}, Lcom/android/settings/HtcChooseLockGeneric;->sendBroadcast(Landroid/content/Intent;)V

    .line 119
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 96
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/framework/app/HtcInternalActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 97
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    .line 99
    invoke-direct {p0, v1}, Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/HtcChooseLockGeneric;->finish()V

    .line 105
    :goto_0
    return-void

    .line 102
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/HtcChooseLockGeneric;->finish()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, -0x1

    const/4 v4, 0x0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 55
    new-instance v3, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v3, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v3, p0, Lcom/android/settings/HtcChooseLockGeneric;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string v3, "password_confirmed"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/HtcChooseLockGeneric;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 62
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "hideKeyguard"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/HtcChooseLockGeneric;->mHideKeyguard:Z

    .line 64
    iget-boolean v3, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    if-nez v3, :cond_1

    .line 65
    new-instance v1, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 66
    .local v1, helper:Lcom/android/settings/ChooseLockSettingsHelper;
    const/16 v3, 0x64

    invoke-virtual {v1, v3, v4, v4}, Lcom/android/settings/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 67
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    .line 68
    invoke-direct {p0, v6}, Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/HtcChooseLockGeneric;->finish()V

    .line 81
    .end local v1           #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-direct {p0, v6}, Lcom/android/settings/HtcChooseLockGeneric;->sendResult(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/HtcChooseLockGeneric;->finish()V

    goto :goto_0

    .line 78
    .restart local v1       #helper:Lcom/android/settings/ChooseLockSettingsHelper;
    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 79
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v3, "com.htc.action.EXIT_CONFIRM_PASSWORD"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    iget-object v5, p0, Lcom/android/settings/HtcChooseLockGeneric;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->getSenseVersion()F

    move-result v3

    const/high16 v6, 0x40b0

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_3

    const-string v3, "com.htc.permission.APP_PLATFORM"

    :goto_1
    invoke-virtual {p0, v5, v0, v3, v4}, Lcom/android/settings/HtcChooseLockGeneric;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    :cond_3
    move-object v3, v4

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/HtcChooseLockGeneric;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/HtcChooseLockGeneric;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    :goto_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 92
    return-void

    .line 88
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 111
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/HtcChooseLockGeneric;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2
    .parameter "intent"
    .parameter "requestCode"

    .prologue
    .line 123
    const-string v0, "hideKeyguard"

    iget-boolean v1, p0, Lcom/android/settings/HtcChooseLockGeneric;->mHideKeyguard:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 124
    invoke-super {p0, p1, p2}, Lcom/android/settings/framework/app/HtcInternalActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 125
    return-void
.end method
