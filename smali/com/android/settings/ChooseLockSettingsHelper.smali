.class public final Lcom/android/settings/ChooseLockSettingsHelper;
.super Ljava/lang/Object;
.source "ChooseLockSettingsHelper.java"


# static fields
.field public static final EXTRA_KEY_PASSWORD:Ljava/lang/String; = "password"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mFragment:Landroid/app/Fragment;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    .line 39
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;)V
    .locals 0
    .parameter "activity"
    .parameter "fragment"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    .line 45
    return-void
.end method

.method private confirmFingerprint(ILjava/lang/CharSequence;)Z
    .locals 5
    .parameter "request"
    .parameter "message"

    .prologue
    .line 87
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ChooseLockSettingsHelper.confirmFingerprint(): FP lock enabled ? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockFingerprintEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 104
    :goto_0
    return v2

    .line 89
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 90
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.framework.activity.security.HtcFingerprintConfirmActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    const-string v2, "SecuritySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add confirm_del message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 95
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "confirm_del"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v1, p1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 104
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 102
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPassword(I)Z
    .locals 5
    .parameter "request"

    .prologue
    const/4 v2, 0x0

    .line 139
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 149
    :goto_0
    return v2

    .line 140
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 141
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.ConfirmLockPassword"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 144
    .local v0, bundle:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1

    .line 145
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v1, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 149
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method

.method private confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 130
    :cond_0
    :goto_0
    return v2

    .line 118
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 120
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "com.android.settings.ConfirmLockPattern.header"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 121
    const-string v3, "com.android.settings.ConfirmLockPattern.footer"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 123
    iget-object v3, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v3, v2, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 124
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.ConfirmLockPattern"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_2

    .line 126
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v2, v1, p1, v0}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 130
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 128
    :cond_2
    iget-object v2, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1
.end method


# virtual methods
.method public launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "request"
    .parameter "message"
    .parameter "details"

    .prologue
    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, launched:Z
    iget-object v1, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 76
    :goto_0
    return v0

    .line 63
    :sswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmFingerprint(ILjava/lang/CharSequence;)Z

    move-result v0

    .line 64
    goto :goto_0

    .line 66
    :sswitch_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPattern(ILjava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 67
    goto :goto_0

    .line 73
    :sswitch_2
    invoke-direct {p0, p1}, Lcom/android/settings/ChooseLockSettingsHelper;->confirmPassword(I)Z

    move-result v0

    goto :goto_0

    .line 60
    :sswitch_data_0
    .sparse-switch
        0x9000 -> :sswitch_0
        0x10000 -> :sswitch_1
        0x20000 -> :sswitch_2
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
        0x55000 -> :sswitch_0
        0x60000 -> :sswitch_2
    .end sparse-switch
.end method

.method public utils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/ChooseLockSettingsHelper;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method
