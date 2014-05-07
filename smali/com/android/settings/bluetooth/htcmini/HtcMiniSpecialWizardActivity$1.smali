.class Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;
.super Ljava/lang/Object;
.source "HtcMiniSpecialWizardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "HtcMiniSpecialWizardActivity"

    const-string v1, "Font scale or theme Changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity$1;->this$0:Lcom/android/settings/bluetooth/htcmini/HtcMiniSpecialWizardActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
