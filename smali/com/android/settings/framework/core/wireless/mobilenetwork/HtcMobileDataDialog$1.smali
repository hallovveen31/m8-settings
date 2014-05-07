.class Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;
.super Ljava/lang/Object;
.source "HtcMobileDataDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x1

    .line 132
    const/4 v0, 0x0

    .line 133
    .local v0, mobileOn:Z
    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->setDataRoamingEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Z)V

    .line 135
    const/4 v0, 0x1

    .line 137
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->unlockPersistWriteProtection()V
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$100(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "InternetConnectionHasRun"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 142
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->finish()V

    .line 143
    return-void
.end method
