.class public Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "HtcFingerprintSetupQuickLaunchDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DEBUG:Z = false

.field private static final EXTRA_KEY_FINGER_ID:Ljava/lang/String; = "finger_id"

.field private static final FINGERPRINT_SHARED_PREFERENCES:Ljava/lang/String; = "fingerprint_shared_preferences"

.field private static final KEY_DIRTY_BIT:Ljava/lang/String; = "dirty_bit"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mFingerId:I

.field private mHtcFontScale:F

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mThemeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    .line 32
    const-class v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mHtcFontScale:F

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 97
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 99
    :cond_0
    return-void
.end method

.method private setQuickLaunchForFingerprint()V
    .locals 3

    .prologue
    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    .local v0, intent:Landroid/content/Intent;
    const-string v1, ":android:show_fragment_title"

    const v2, 0x7f0c0238

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    const-string v1, "finger_id"

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mFingerId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 105
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/Settings$HtcFingerPrintQuickLaunchActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    .line 133
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    .line 136
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 111
    packed-switch p2, :pswitch_data_0

    .line 124
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(): unknown button = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    .line 129
    :goto_0
    return-void

    .line 113
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "onClick(): BUTTON_POSITIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->setQuickLaunchForFingerprint()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    goto :goto_0

    .line 119
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "onClick(): BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    goto :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0}, Landroid/content/res/HtcConfiguration;->applyHtcFontscale(Landroid/content/Context;)Z

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mHtcFontScale:F

    .line 61
    invoke-static {p0, v3}, Lcom/htc/configuration/HtcWrapConfiguration;->getHtcThemeId(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mThemeId:I

    .line 62
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mThemeId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->setTheme(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0f0088

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "finger_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mFingerId:I

    .line 68
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mFingerId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mFingerId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    iget v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mFingerId:I

    if-gtz v0, :cond_2

    .line 70
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "The finger id is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_2
    const-string v0, "fingerprint_shared_preferences"

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 75
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dirty_bit"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->showDialog()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 147
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->dismissDialog()V

    .line 149
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onDestroy()V

    .line 150
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 140
    sget-boolean v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onPause()V

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->finish()V

    .line 144
    return-void
.end method

.method protected showDialog()V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->dismissDialog()V

    .line 83
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0211

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0212

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0b0f

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 91
    iget-object v0, p0, Lcom/android/settings/framework/activity/security/HtcFingerprintSetupQuickLaunchDialog;->mAlertDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 92
    return-void
.end method
