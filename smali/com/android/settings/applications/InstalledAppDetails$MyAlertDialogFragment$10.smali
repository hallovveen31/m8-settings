.class Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$10;
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
    .line 2024
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 2027
    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$10;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mHWAccSwitch:Lcom/htc/widget/HtcCheckBox;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$600(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/htc/widget/HtcCheckBox;

    move-result-object v0

    .line 2028
    .local v0, checkBox:Lcom/htc/widget/HtcCheckBox;
    if-eqz v0, :cond_0

    .line 2029
    invoke-virtual {v0}, Lcom/htc/widget/HtcCheckBox;->isChecked()Z

    move-result v1

    .line 2030
    .local v1, isChecked:Z
    if-nez v1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Lcom/htc/widget/HtcCheckBox;->setChecked(Z)V

    .line 2032
    .end local v1           #isChecked:Z
    :cond_0
    return-void

    .line 2030
    .restart local v1       #isChecked:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
