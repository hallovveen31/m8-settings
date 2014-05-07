.class public Lcom/android/settings/SmartPCStorageDialog$OperateDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "SmartPCStorageDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SmartPCStorageDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OperateDialog"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SmartPCStorageDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/SmartPCStorageDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    .line 327
    invoke-direct {p0, p2}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 328
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/settings/SmartPCStorageDialog$OperateDialog;->this$0:Lcom/android/settings/SmartPCStorageDialog;

    invoke-virtual {v0}, Lcom/android/settings/SmartPCStorageDialog;->finish()V

    .line 333
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
