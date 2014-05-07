.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/htc/app/HtcAlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mNewDefault:Landroid/content/ComponentName;

.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/htc/app/HtcAlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 8
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 67
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 68
    iget-object v5, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-nez v5, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v3

    .line 72
    :cond_1
    invoke-static {p0, v4}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v1

    .line 73
    .local v1, oldSmsComponent:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v0

    .line 75
    .local v0, oldSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    iget-object v5, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v6, v6, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 80
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 81
    .local v2, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v5, 0x7f0c0eeb

    invoke-virtual {p0, v5}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 82
    const v5, 0x7f0c0eec

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v7, v7, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v7, v6, v3

    iget-object v3, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v3, v6, v4

    invoke-virtual {p0, v5, v6}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 84
    const v3, 0x7f0c0b43

    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 85
    const v3, 0x7f0c0b44

    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 86
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 87
    iput-object p0, v2, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    move v3, v4

    .line 90
    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 56
    packed-switch p2, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 58
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 59
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcom/htc/app/HtcAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 46
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 48
    .local v1, packageName:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 49
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 52
    :cond_0
    return-void
.end method
