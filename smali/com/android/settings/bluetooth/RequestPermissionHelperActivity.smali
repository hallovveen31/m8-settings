.class public Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "RequestPermissionHelperActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final ACTION_INTERNAL_REQUEST_BT_ON:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

.field public static final ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE:Ljava/lang/String; = "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

.field private static final TAG:Ljava/lang/String; = "RequestPermissionHelperActivity"


# instance fields
.field private mCallerAppName:Ljava/lang/String;

.field private mEnableOnly:Z

.field private mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

.field private mTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method

.method private parseIntent()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 149
    iput-boolean v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 150
    const-string v4, "CallerAppName"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mCallerAppName:Ljava/lang/String;

    .line 163
    :goto_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 164
    .local v1, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    if-nez v1, :cond_2

    .line 165
    const-string v4, "RequestPermissionHelperActivity"

    const-string v5, "Error: there\'s a problem starting Bluetooth"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 171
    .end local v1           #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :goto_1
    return v2

    .line 152
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.settings.bluetooth.ACTION_INTERNAL_REQUEST_BT_ON_AND_DISCOVERABLE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 154
    iput-boolean v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    .line 156
    const-string v4, "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

    const/16 v5, 0x78

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    goto :goto_0

    .line 159
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_1

    .line 169
    .restart local v1       #manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    :cond_2
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    move v2, v3

    .line 171
    goto :goto_1
.end method


# virtual methods
.method createDialog()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 81
    iget-object v0, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 82
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v1, 0x7f0c0bc0

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 84
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mEnableOnly:Z

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mCallerAppName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 86
    const v1, 0x7f0c0ade

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mCallerAppName:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 98
    :goto_0
    const v1, 0x7f0c0b43

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 99
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 100
    const v1, 0x7f0c0b44

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 101
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setupAlert()V

    .line 104
    return-void

    .line 88
    :cond_0
    const v1, 0x7f0c0bc1

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 91
    :cond_1
    iget v1, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    if-nez v1, :cond_2

    .line 92
    const v1, 0x7f0c0bc5

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 94
    :cond_2
    const v1, 0x7f0c0bc4

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mTimeout:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    .line 177
    invoke-super {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onBackPressed()V

    .line 178
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 109
    packed-switch p2, :pswitch_data_0

    .line 140
    :goto_0
    return-void

    .line 111
    :pswitch_0
    const/4 v0, 0x0

    .line 115
    .local v0, btState:I
    const/16 v1, 0x1e

    .line 117
    .local v1, retryCount:I
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    .line 118
    const-wide/16 v3, 0x64

    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    const/16 v3, 0xd

    if-ne v0, v3, :cond_1

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 124
    :cond_1
    :goto_1
    const/16 v3, 0xb

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->mLocalAdapter:Lcom/android/settings/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothAdapter;->enable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 127
    :cond_2
    const/16 v2, -0x3e8

    .line 139
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .local v2, returnCode:I
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->setResult(I)V

    goto :goto_0

    .line 129
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :cond_3
    const/4 v2, 0x0

    .line 131
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 134
    .end local v0           #btState:I
    .end local v1           #retryCount:I
    .end local v2           #returnCode:I
    :pswitch_1
    const/4 v2, 0x0

    .line 135
    .restart local v2       #returnCode:I
    goto :goto_2

    .line 120
    .end local v2           #returnCode:I
    .restart local v0       #btState:I
    .restart local v1       #retryCount:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 109
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f0f0088

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 66
    invoke-direct {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->parseIntent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->finish()V

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 71
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->createDialog()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v2, :cond_0

    .line 75
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->onClick(Landroid/content/DialogInterface;I)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/RequestPermissionHelperActivity;->dismiss()V

    goto :goto_0
.end method
