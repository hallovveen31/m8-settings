.class final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final D:Z = false

.field public static final RECONNECT:I = 0x3

.field public static final REPAIR:I = 0x0

.field public static final REPAIR_FOR_PIN_ERROR:I = 0x1

.field public static final REPAIR_FOR_REJECTED:I = 0x2

.field static final V:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/Utils;->V:Z

    .line 37
    sget-boolean v0, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    sput-boolean v0, Lcom/android/settings/bluetooth/Utils;->D:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getConnectionStateSummary(I)I
    .locals 1
    .parameter "connectionState"

    .prologue
    .line 43
    packed-switch p0, :pswitch_data_0

    .line 53
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 45
    :pswitch_0
    const v0, 0x7f0c0bae

    goto :goto_0

    .line 47
    :pswitch_1
    const v0, 0x7f0c0bb5

    goto :goto_0

    .line 49
    :pswitch_2
    const v0, 0x7f0c0bb3

    goto :goto_0

    .line 51
    :pswitch_3
    const v0, 0x7f0c0bb4

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "name"

    .prologue
    .line 89
    const v0, 0x7f0c0cc7

    invoke-static {p0, p1, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 90
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Lcom/htc/widget/HtcAlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog;
    .locals 4
    .parameter "context"
    .parameter "dialog"
    .parameter "disconnectListener"
    .parameter "title"
    .parameter "message"

    .prologue
    const v2, 0x104000a

    .line 62
    if-nez p1, :cond_0

    .line 63
    new-instance v1, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, p2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x104

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object p1

    .line 76
    :goto_0
    invoke-virtual {p1, p3}, Lcom/htc/widget/HtcAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p1, p4}, Lcom/htc/widget/HtcAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 79
    return-object p1

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {p1}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 72
    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 73
    .local v0, okText:Ljava/lang/CharSequence;
    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0, p2}, Lcom/htc/widget/HtcAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6
    .parameter "context"
    .parameter "name"
    .parameter "messageResId"

    .prologue
    const/4 v4, 0x0

    .line 93
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-virtual {p0, p2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 94
    .local v2, message:Ljava/lang/String;
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v1

    .line 95
    .local v1, manager:Lcom/android/settings/bluetooth/LocalBluetoothManager;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object v0

    .line 96
    .local v0, activity:Landroid/content/Context;
    invoke-virtual {v1}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 97
    new-instance v3, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v3, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040014

    invoke-virtual {v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/htc/widget/HtcAlertDialog$Builder;->show()Lcom/htc/widget/HtcAlertDialog;

    .line 105
    :goto_0
    return-void

    .line 103
    :cond_0
    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method static showRetryDialog(Landroid/content/Context;Lcom/android/settings/bluetooth/CachedBluetoothDevice;Lcom/htc/widget/HtcAlertDialog;I)Lcom/htc/widget/HtcAlertDialog;
    .locals 6
    .parameter "context"
    .parameter "cachedDevice"
    .parameter "dialog"
    .parameter "action"

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    .line 115
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 120
    :cond_0
    if-nez p3, :cond_1

    .line 121
    const v1, 0x7f0c0a79

    .line 122
    .local v1, titleId:I
    const v2, 0x7f0c0a7a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, message:Ljava/lang/String;
    :goto_0
    new-instance v2, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v2, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const v3, 0x20402b9

    new-instance v4, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v4, p3, p1}, Lcom/android/settings/bluetooth/Utils$1;-><init>(ILcom/android/settings/bluetooth/CachedBluetoothDevice;)V

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    const/high16 v3, 0x104

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/htc/widget/HtcAlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object p2

    .line 149
    invoke-virtual {p2}, Lcom/htc/widget/HtcAlertDialog;->show()V

    .line 150
    return-object p2

    .line 123
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #titleId:I
    :cond_1
    if-ne p3, v3, :cond_2

    .line 124
    const v1, 0x7f0c0a79

    .line 125
    .restart local v1       #titleId:I
    const v2, 0x7f0c0cc4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 126
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #titleId:I
    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    .line 127
    const v1, 0x7f0c0a79

    .line 128
    .restart local v1       #titleId:I
    const v2, 0x7f0c0cc6

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/android/settings/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0

    .line 130
    .end local v0           #message:Ljava/lang/String;
    .end local v1           #titleId:I
    :cond_3
    const v1, 0x7f0c0a7b

    .line 131
    .restart local v1       #titleId:I
    const v2, 0x7f0c0a7c

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #message:Ljava/lang/String;
    goto :goto_0
.end method
