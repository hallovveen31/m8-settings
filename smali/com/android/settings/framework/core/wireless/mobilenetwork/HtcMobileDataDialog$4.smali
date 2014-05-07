.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;
.super Landroid/net/HtcMobileNetworkEngine;
.source "HtcMobileDataDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->ensureMobileDataObjects()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0, p2}, Landroid/net/HtcMobileNetworkEngine;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCheckStateChange(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 383
    return-void
.end method

.method public onEnableStateChange(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 386
    if-nez p1, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$4;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->finish()V

    .line 391
    :cond_0
    return-void
.end method

.method public onSummaryChange(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 394
    return-void
.end method
