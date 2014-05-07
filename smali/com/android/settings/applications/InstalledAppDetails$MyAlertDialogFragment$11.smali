.class Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;
.super Ljava/lang/Object;
.source "InstalledAppDetails.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 2005
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2007
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2008
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "view is not ready. skin this action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v4}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v4

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z
    invoke-static {v4}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    :cond_0
    :goto_0
    return-void

    .line 2013
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$600(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    .line 2014
    .local v0, checkBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_0

    .line 2015
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    .line 2016
    .local v1, isChecked:Z
    sget-boolean v2, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v2, :cond_2

    .line 2017
    const-string v2, "Settings:InstalledAppDetails"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHWAccSwitch, checked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2019
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$11;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->setHWAccEnabled(Z)V
    invoke-static {v2, v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1900(Lcom/android/settings/applications/InstalledAppDetails;Z)V

    goto :goto_0
.end method
