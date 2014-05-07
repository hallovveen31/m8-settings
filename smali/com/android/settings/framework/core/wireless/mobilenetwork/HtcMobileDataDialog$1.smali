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

    iput-object p1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->setDataRoamingEnabled(Z)V
    invoke-static {v1, v3}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$000(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    #calls: Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->unlockPersistWriteProtection()V
    invoke-static {v1}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->access$100(Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;->persistMobileDataSettingEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "InternetConnectionHasRun"

    invoke-static {v1, v2, v3}, Lcom/htc/wrap/android/provider/HtcWrapSettings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog$1;->this$0:Lcom/android/settings/framework/core/wireless/mobilenetwork/HtcMobileDataDialog;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    return-void
.end method
