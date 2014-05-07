.class public Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "VzwGpsWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# static fields
.field static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    sput-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    .line 32
    const-class v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method

.method private showDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    sget-boolean v1, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    const-string v2, "showDialog():"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 51
    .local v0, alertParams:Lcom/htc/app/HtcAlertController$AlertParams;
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0aa7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0aa6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 54
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mCancelable:Z

    .line 55
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 57
    iput-boolean v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonDisabled:Z

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c079e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 59
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 61
    iput-boolean v3, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonDisabled:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c079d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 63
    iput-object p0, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->setupAlert()V

    .line 66
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 92
    sget-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "onCancel()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGPS(Landroid/content/Context;Z)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->finish()V

    .line 95
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 70
    packed-switch p2, :pswitch_data_0

    .line 82
    sget-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

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

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGPS(Landroid/content/Context;Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->finish()V

    .line 88
    :goto_0
    return-void

    .line 72
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "onClick(): BUTTON_POSITIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGPS(Landroid/content/Context;Z)V

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->finish()V

    goto :goto_0

    .line 77
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "onClick(): BUTTON_NEGATIVE"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_2
    iget-object v0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/android/settings/framework/util/HtcLocationUtil;->enableGPS(Landroid/content/Context;Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->finish()V

    goto :goto_0

    .line 70
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    iput-object p0, p0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Lcom/android/settings/framework/flag/feature/HtcFeatureFlags;->isVerizonSku()Z

    move-result v0

    if-nez v0, :cond_1

    .line 40
    sget-boolean v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->TAG:Ljava/lang/String;

    const-string v1, "showDialog(): This method is not available in current project. ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->finish()V

    .line 45
    :goto_0
    return-void

    .line 44
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/framework/activity/location/VzwGpsWarningDialog;->showDialog()V

    goto :goto_0
.end method
