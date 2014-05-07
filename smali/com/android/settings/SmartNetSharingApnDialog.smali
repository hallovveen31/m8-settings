.class public Lcom/android/settings/SmartNetSharingApnDialog;
.super Lcom/android/settings/framework/app/HtcInternalActivity;
.source "SmartNetSharingApnDialog.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mApnDialogFilter:Landroid/content/IntentFilter;

.field private mApnDialogReceiver:Landroid/content/BroadcastReceiver;

.field private mApnSelectedIndex:I

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/htc/widget/HtcAlertDialog;

.field private mDunNameItems:[Ljava/lang/String;

.field private pause:Landroid/os/ConditionVariable;

.field private sp:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;-><init>()V

    .line 21
    const-string v0, "SmartNetSharingApnDialog"

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->TAG:Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDunNameItems:[Ljava/lang/String;

    .line 28
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->pause:Landroid/os/ConditionVariable;

    .line 121
    new-instance v0, Lcom/android/settings/SmartNetSharingApnDialog$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNetSharingApnDialog$3;-><init>(Lcom/android/settings/SmartNetSharingApnDialog;)V

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->pause:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/SmartNetSharingApnDialog;)Lcom/htc/widget/HtcAlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    return-object v0
.end method


# virtual methods
.method protected enableTetheringWithApn(I)V
    .locals 4
    .parameter "type"

    .prologue
    const/4 v3, 0x0

    .line 51
    const-string v0, "SmartNetSharingApnDialog"

    const-string v1, "enable TetheringWithApn"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    const-string v0, ""

    sget-object v1, Lcom/htc/wrap/com/android/internal/telephony/HtcWrapTelephonyProperties;->PROPERTY_ICC_OPERATOR_NUMERIC:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2}, Lcom/htc/wrap/android/os/HtcWrapSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/SmartNSUtility;->getSelectedDunIndex(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnSelectedIndex:I

    .line 54
    invoke-static {}, Lcom/android/settings/SmartNSUtility;->getDunItems()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDunNameItems:[Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDunNameItems:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c076e

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDunNameItems:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnSelectedIndex:I

    new-instance v3, Lcom/android/settings/SmartNetSharingApnDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/SmartNetSharingApnDialog$1;-><init>(Lcom/android/settings/SmartNetSharingApnDialog;I)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 75
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const-string v0, "SmartNetSharingApnDialog"

    const-string v1, "APN dialog not displayed due to no dun item."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/SmartNetSharingApnDialog;->finish()V

    goto :goto_0

    .line 81
    :cond_2
    const-string v0, "SmartNetSharingApnDialog"

    const-string v1, "APN dialog not displayed due to operator numeric is empty."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;

    const-string v1, "hasTethered"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;

    const-string v1, "isNSOpening"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.openingIS.UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 86
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;

    const-string v1, "sns_pre_type"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 88
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/PSService;->FailIPTNotification(Landroid/content/Context;Z)V

    .line 91
    :cond_3
    new-instance v0, Lcom/android/settings/SmartNetSharingApnDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SmartNetSharingApnDialog$2;-><init>(Lcom/android/settings/SmartNetSharingApnDialog;)V

    invoke-virtual {v0}, Lcom/android/settings/SmartNetSharingApnDialog$2;->start()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/SmartNetSharingApnDialog;->finish()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalActivity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iput-object p0, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    .line 34
    invoke-virtual {p0}, Lcom/android/settings/SmartNetSharingApnDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 35
    .local v0, intent:Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 36
    const-string v2, "SmartNetSharingApnDialog"

    const-string v3, "Received intent is null, return !"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :goto_0
    return-void

    .line 39
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogFilter:Landroid/content/IntentFilter;

    .line 40
    iget-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogFilter:Landroid/content/IntentFilter;

    const-string v3, "com.htc.intent.action.USB_CONNECT2PC"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    iget-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogFilter:Landroid/content/IntentFilter;

    const-string v4, "com.htc.permission.APP_PLATFORM"

    const/4 v5, 0x0

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/android/settings/SmartNetSharingApnDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 43
    iget-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;

    const-string v3, "WirelessSettings"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SmartNetSharingApnDialog;->sp:Landroid/content/SharedPreferences;

    .line 44
    const-string v2, "apn_from"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 45
    .local v1, type:I
    const-string v2, "SmartNetSharingApnDialog"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apn_from = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p0, v1}, Lcom/android/settings/SmartNetSharingApnDialog;->enableTetheringWithApn(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 158
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onDestroy()V

    .line 159
    const-string v1, "SmartNetSharingApnDialog"

    const-string v2, "-onDestroy()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mApnDialogReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/settings/SmartNetSharingApnDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    const-string v1, "SmartNetSharingApnDialog"

    const-string v2, "unregister ApnDialogReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartNetSharingApnDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when unregister ApnDialogReceiver :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 137
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onPause()V

    .line 138
    const-string v1, "SmartNetSharingApnDialog"

    const-string v2, "-onPause()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/settings/SmartNetSharingApnDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SmartNetSharingApnDialog;->finish()V

    .line 144
    const-string v1, "SmartNetSharingApnDialog"

    const-string v2, "Dismiss apn dialog."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "SmartNetSharingApnDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error when dismiss apn dialog :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalActivity;->onStop()V

    .line 153
    const-string v0, "SmartNetSharingApnDialog"

    const-string v1, "-onStop()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method
