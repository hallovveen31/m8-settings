.class public Lcom/android/settings/wifi/EapErrorDialog;
.super Lcom/android/settings/framework/app/HtcInternalAlertActivity;
.source "EapErrorDialog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "EapErrorDialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/android/settings/framework/app/HtcInternalAlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    invoke-virtual {p0}, Lcom/android/settings/wifi/EapErrorDialog;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7f0f0088

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 16
    const v1, 0x7f0c0870

    .line 21
    .local v1, res:I
    iget-object v0, p0, Lcom/android/settings/wifi/EapErrorDialog;->mAlertParams:Lcom/htc/app/HtcAlertController$AlertParams;

    .line 22
    .local v0, p:Lcom/htc/app/HtcAlertController$AlertParams;
    const v2, 0x7f0c00b9

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/EapErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/EapErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 24
    const v2, 0x7f0c00a5

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/EapErrorDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 25
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/htc/app/HtcAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/wifi/EapErrorDialog;->setupAlert()V

    .line 27
    return-void
.end method
