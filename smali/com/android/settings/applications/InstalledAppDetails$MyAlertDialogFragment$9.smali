.class Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;
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

.field final synthetic val$moveFlags:I


# direct methods
.method constructor <init>(Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1974
    iput-object p1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    iput p2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->val$moveFlags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1976
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1977
    const-string v0, "Settings:InstalledAppDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view is not ready. skin this action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mIsViewRootReady:Z
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$700(Lcom/android/settings/applications/InstalledAppDetails;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/framework/util/log/HtcLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1995
    :cond_0
    :goto_0
    return-void

    .line 1983
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1984
    sget-boolean v0, Lcom/android/settings/framework/flag/HtcSkuFlags;->isDebugMode:Z

    if-eqz v0, :cond_0

    .line 1985
    const-string v0, "Settings:InstalledAppDetails"

    const-string v1, "DLG_MOVE_APP, onClick, getOwner().mAppEntry is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1991
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    const/4 v1, 0x1

    #setter for: Lcom/android/settings/applications/InstalledAppDetails;->mMoveInProgress:Z
    invoke-static {v0, v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$1502(Lcom/android/settings/applications/InstalledAppDetails;Z)Z

    .line 1992
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    #calls: Lcom/android/settings/applications/InstalledAppDetails;->refreshButtons()V
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1600(Lcom/android/settings/applications/InstalledAppDetails;)V

    .line 1993
    iget-object v0, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v0

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v0}, Lcom/android/settings/applications/InstalledAppDetails;->access$1800(Lcom/android/settings/applications/InstalledAppDetails;)Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v1

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mAppEntry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    invoke-static {v1}, Lcom/android/settings/applications/InstalledAppDetails;->access$100(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->this$0:Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/InstalledAppDetails;

    move-result-object v2

    #getter for: Lcom/android/settings/applications/InstalledAppDetails;->mPackageMoveObserver:Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;
    invoke-static {v2}, Lcom/android/settings/applications/InstalledAppDetails;->access$1700(Lcom/android/settings/applications/InstalledAppDetails;)Lcom/android/settings/applications/InstalledAppDetails$PackageMoveObserver;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/applications/InstalledAppDetails$MyAlertDialogFragment$9;->val$moveFlags:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->movePackage(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;I)V

    goto :goto_0
.end method