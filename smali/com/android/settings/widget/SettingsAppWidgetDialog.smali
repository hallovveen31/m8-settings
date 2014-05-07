.class public Lcom/android/settings/widget/SettingsAppWidgetDialog;
.super Landroid/app/Activity;
.source "SettingsAppWidgetDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field public static final DIALOG_TYPE_DEFAULT:I = -0x1

.field public static final DIALOG_TYPE_EAS_POLICY:I = 0x1

.field public static final DIALOG_TYPE_SPRINT:I = 0x2

.field public static final EXTRA_DIALOG_TYPE:Ljava/lang/String; = "dialog_type"

.field public static final LOG_TAG:Ljava/lang/String; = "SettingsAppWidgetDialog"


# instance fields
.field private mDialog:Lcom/htc/widget/HtcAlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showHtcAlertDialog(I)V
    .locals 2
    .parameter "type"

    .prologue
    .line 43
    packed-switch p1, :pswitch_data_0

    .line 55
    :goto_0
    return-void

    .line 45
    :pswitch_0
    new-instance v0, Lcom/htc/widget/HtcAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0c0aec

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setTitle(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0aed

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setMessage(I)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/htc/widget/HtcAlertDialog$Builder;->setCancelable(Z)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/widget/HtcAlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/htc/widget/HtcAlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog$Builder;->create()Lcom/htc/widget/HtcAlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->show()V

    goto :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetDialog;->finish()V

    .line 59
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetDialog;->finish()V

    .line 63
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/SettingsAppWidgetDialog;->requestWindowFeature(I)Z

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsAppWidgetDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "dialog_type"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 28
    .local v0, type:I
    const-string v1, "SettingsAppWidgetDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-direct {p0, v0}, Lcom/android/settings/widget/SettingsAppWidgetDialog;->showHtcAlertDialog(I)V

    .line 30
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 35
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    invoke-virtual {v0}, Lcom/htc/widget/HtcAlertDialog;->dismiss()V

    .line 39
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SettingsAppWidgetDialog;->mDialog:Lcom/htc/widget/HtcAlertDialog;

    .line 40
    return-void
.end method
