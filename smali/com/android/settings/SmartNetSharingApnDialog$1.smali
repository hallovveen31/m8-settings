.class Lcom/android/settings/SmartNetSharingApnDialog$1;
.super Ljava/lang/Object;
.source "SmartNetSharingApnDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SmartNetSharingApnDialog;->enableTetheringWithApn(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartNetSharingApnDialog;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/settings/SmartNetSharingApnDialog;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    iput p2, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->val$type:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 62
    const-string v0, "SmartNetSharingApnDialog"

    const-string v1, "Set APN item and enable UsbTethering."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/SmartNSUtility;->setSelectedDunId(ILandroid/content/Context;)V

    .line 64
    iget v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->val$type:I

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.openingIS.UI"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/settings/SmartNSUtility;->setNetSharing(ZLandroid/content/Context;)V

    .line 70
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 71
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmartNetSharingApnDialog;->finish()V

    .line 72
    return-void

    .line 67
    :cond_1
    iget v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->val$type:I

    if-ne v0, v3, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/settings/SmartNetSharingApnDialog$1;->this$0:Lcom/android/settings/SmartNetSharingApnDialog;

    #getter for: Lcom/android/settings/SmartNetSharingApnDialog;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/settings/SmartNetSharingApnDialog;->access$000(Lcom/android/settings/SmartNetSharingApnDialog;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.htc.android.startIS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
